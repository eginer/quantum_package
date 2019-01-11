.. _kohn_sham:

.. program:: kohn_sham

.. default-role:: option

=========
kohn_sham
=========


The Kohn-Sham module performs *Restricted* Kohn-Sham calculations (the
spatial part of the |MOs| is common for alpha and beta spinorbitals).

The Kohn-Sham in an SCF and therefore is based on the ``scf_utils`` structure. 
It performs the following actions:

#. Compute/Read all the one- and two-electron integrals, and store them in memory
#. Check in the |EZFIO| database if there is a set of |MOs|. If there is, it
   will read them as initial guess. Otherwise, it will create a guess.
#. Perform the |SCF| iterations

The definition of the Fock matrix is in :file:`kohn_sham fock_matrix_ks.irp.f` 
For the keywords related to the |SCF| procedure, see the ``scf_utils`` directory where you will find all options. 
The main are: 

#. :option:`scf_utils thresh_scf` 
#. :option:`scf_utils level_shift` 

At each iteration, the |MOs| are saved in the |EZFIO| database. Hence, if the calculation
crashes for any unexpected reason, the calculation can be restarted by running again
the |SCF| with the same |EZFIO| database.

The `DIIS`_ algorithm is implemented, as well as the `level-shifting`_ method.
If the |SCF| does not converge, try again with a higher value of :option:`level_shift`.

To start a calculation from scratch, the simplest way is to remove the
``mo_basis`` directory from the |EZFIO| database, and run the |SCF| again.




.. _DIIS: https://en.wikipedia.org/w/index.php?title=DIIS
.. _level-shifting: https://doi.org/10.1002/qua.560070407






Providers
---------


.. c:var:: ks_energy

    .. code:: text

        double precision	:: ks_energy
        double precision	:: two_electron_energy
        double precision	:: one_e_energy
        double precision	:: fock_matrix_energy
        double precision	:: trace_potential_xc

    File: :file:`ks_enery.irp.f`

    Kohn-Sham energy containing the nuclear repulsion energy, and the various components of this quantity.




Subroutines / functions
-----------------------



.. c:function:: srs_ks_cf

    .. code:: text

        subroutine srs_ks_cf

    File: :file:`ks_scf.irp.f`

    Produce `Kohn_Sham` MO orbital output: mo_basis.mo_num mo_basis.mo_label mo_basis.ao_md5 mo_basis.mo_coef mo_basis.mo_occ output: kohn_sham.energy optional: mo_basis.mo_coef


