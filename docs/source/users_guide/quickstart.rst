=================
Quick-start guide
=================

This tutorial should talk you through everything you need to get started with
the |qp|. As an example, we will run a |CIPSI| calculation on the HCN molecule.


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


This xyz file is now used with the :command:`qp_create_ezfio_from_xyz` command to
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

    qp_run SCF hcn 

The expected energy is ``-92.827856698`` au.

.. seealso:: 

    The documentation of the :ref:`Hartree_Fock` module.


Choose the target |MO| space
----------------------------

Now, modify to |EZFIO| database to make |CIPSI| calculation in the
full set of valence |MOs|, keeping the core |MOs| frozen. The simple
command :command:`qp_set_frozen_core` does this automatically:

.. code:: bash

    qp_set_frozen_core hcn


Run the |CIPSI| calculation
----------------------------

We will now use the |CIPSI| algorithm to estimate the |FCI| energy.

.. code::

    qp_run FCI hcn


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

The estimated |FCI| energy of HCN is ``-93.0501`` au.

.. seealso:: 

    The documentation of the :ref:`FCI` module.


.. important:: TODO

  .. include:: /work.rst

  * Interfaces : molden/fcidump
  * Natural orbitals
  * Parameters for Hartree-Fock
  * Parameters for Davidson
  * Running in parallel
  * Parameters for selection (Generators/selectors)

