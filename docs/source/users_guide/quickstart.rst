=================
Quick-start guide
=================

This tutorial should teach you everything you need to get started with
the the basics of the |qp|. 
As an example, we will run a |CIPSI| calculation on the HCN molecule in the 631-G basis set.


Demo video
==========

.. Include demo video here


Hands on
========

.. important::

   Before using the |qp|, it is required to source the file
   :file:`quantum_package.rc` if it has not been done already in the current
   shell.

Create the EZFIO database
-------------------------

The data relative to calculations are stored in an |EZFIO| database.
|EZFIO| is a hierarchical data format which uses the hierarchy of the file
system to organize the data, as files stored in a directory.
The data in the |EZFIO| directory are stored as plain text files, so it can be
opened with any text editor.
To access the data of the |EZFIO| database, the APIs (Fortran, |Python|,
|OCaml| or Bash) provided by |EZFIO| should be used, or tools using these APIs
such as :ref:`qp_edit` provided with the |qp|.

First, create an `xyz` file containing the coordinates of the molecule.
The file :file:`hcn.xyz` contains::

   3
   HCN molecule
   C    0.0    0.0    0.0
   H    0.0    0.0    1.064
   N    0.0    0.0    -1.156


This xyz file is now used with the :ref:`qp_create_ezfio_from_xyz` command to
create an |EZFIO| database with the 6-31G basis set:

.. code:: bash

  qp_create_ezfio_from_xyz -b "6-31G" hcn.xyz -o hcn

The EZFIO database now contains data relative to the nuclear coordinates and the atomic
basis set:

.. code:: bash

  $ ls hcn
  ao_basis/  electrons/  ezfio/  nuclei/  pseudo/


Run a Hartree-Fock calculation
------------------------------

The program :ref:`qp_run` is the driver program of the |qp|. To run an SCF calculation,
just run 

.. code:: bash

    qp_run scf hcn 

The expected energy is ``-92.827856698`` au.

.. seealso:: 

    The documentation of the :ref:`hartree_fock` module.

This creates the |MOs| in the |EZFIO| database that will be used to perform any other post-SCF method. 
The |qp| does not handle symmetry and the |MOs| are stored by increasing order of Fock energies. 

Choose the target |MO| space
----------------------------

Now, modify to |EZFIO| database to make |CIPSI| calculation in the
full set of valence |MOs|, keeping the core |MOs| frozen. The simple
command :ref:`qp_set_frozen_core` does this automatically:

.. code:: bash

    qp_set_frozen_core hcn


The general command to specify core and active orbitals is :ref:`qp_set_mo_class`. 
In the case of HCN molecule in the 631G basis, one has 20 |MOs| in total and the two first orbitals are frozen:

.. code::

    qp_set_mo_class -core "[1-2]" -act "[3-20]" hcn



Run the |CIPSI| calculation
----------------------------

We will now use the |CIPSI| algorithm to estimate the |FCI| energy.

.. code::

    qp_run fci hcn | tee hcn.fci.out 


The program will start with a single determinant and will iteratively:

* Select the most important determinants from the external space and add them to the
  internal space
* Add all the necessary determinants to allow the eigenvector of |H| to be
  also an eigenstate of |S^2|
* Diagonalize |H| in the enlarged internal space
* Compute (stochastically) the second-order perturbative contribution to the energy 
* Extrapolate the variational energy by fitting
  :math:`E=E_\text{FCI} - \alpha\, E_\text{PT2}`

By default, the program will stop when more than one million determinants have
entered in the internal space, or when the |PT2| energy is below :math:`10^{-4}`.

To have a pictural illustration of the convergence of the |CIPSI| algorithm, just run 

.. code::

    qp_e_conv_fci hcn.fci.out

This will create the files "hcn.fci.out.conv" containing the data of the convergence of the energy that can be plotted, together with the file "hcn.fci.out.conv.eps" which is obtained from the gnuplot plot file "hcn.fci.out.conv.plt". 


The estimated |FCI| energy of HCN is ``-93.0501`` au.

.. seealso:: 

    The documentation of the :ref:`fci` module.

Extracting natural orbitals
---------------------------

Once obtained the near |FCI| wave function, one can obtain many quantities related to it. 
One of these quantities are the natural orbitals which have the properties of diagonalizing the one-body density matrix: 

   .. math::

       \rho_{ij} = \delta_{ij}

where the element of the one-body density matrix :math:`\rho_{ij}` is define as:


   .. math::

       \rho_{ij} = \langle \Psi | \left( a^{\dagger}_{j,\alpha} a_{i,\alpha} + a^{\dagger}_{j,\beta} a_{i,\beta} \right) | \Psi \rangle


These orbitals are in general known to be better than the usual |HF| |MOs| as they are obtained from a correlated wave function. To use these orbitals for future calculations, one has to replace the current |MOs| by the natural orbitals. To do so, just run: 

.. code::

    qp_run save_natorb hcn


Hands on
========

.. important::

   As the |MOs| are changed, for the sake of coherence of future calculations, the save_natorb program 
   *automatically removes the current wave function* stored in the |EZFIO| database and replace 
   it by a single Slater determinant. 


Then, you can run another |CIPSI| calculation to see how the use of natural orbital affect the convergence of the algorithm. For instance: 

.. code::

    qp_run fci hcn | tee hcn.fci_natorb.out 

and then

.. code::

    qp_e_conv_fci hcn.fci_natorb.out


Printing the near |FCI| wave function 
-------------------------------------

Once obtained the near |FCI| energy, one can also take a closer look at the wave function stored in the |EZFIO| database. 
If the wave function contains less than :math:`10^4` determinants, you can directly read it with the 
:ref:`qp_edit` command. Just run 

.. code::

    qp_edit hcn


.. important::

        The :ref:`qp_edit` mode virtually makes human-friendly the architecture of the |EZFIO| database 
        through *vim*-like editor.  


Then, look for "hand" when you are in the :ref:`qp_edit` mode. If the research is negative, 
then it means that the wave function stored in the |EZFIO| database is too large to be edited in :ref:`qp_edit` mode. 
An alternative is to use the :command:`print_wf` command: 

.. code::

    qp_run print_wf hcn | tee hcn.fci_natorb.wf

This program will, by default, print out the first :math:`10^4` determinants whatever the size of the wave function stored in the |EZFIO| folder. If you want to change the number of printed Slater determinants, just change the :option:`determinants n_det_print_wf` keyword using the :ref:`qp_edit` tool. 


The Range Separated Hybrids
---------------------------

TODO 


.. important:: TODO

  .. include:: /work.rst

  * Parameters for Hartree-Fock
  * Parameters for Davidson
  * Running in parallel
  * Parameters for selection (Generators/selectors)

