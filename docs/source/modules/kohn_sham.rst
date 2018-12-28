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
# :option:`scf_utils thresh_scf` 
# :option:`scf_utils level_shift` 

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


.. c:var:: ao_bi_elec_integral_alpha

    .. code:: text

        double precision, allocatable	:: ao_bi_elec_integral_alpha	(ao_num,ao_num)
        double precision, allocatable	:: ao_bi_elec_integral_beta	(ao_num,ao_num)

    File: :file:`fock_matrix_ks.irp.f`

    Alpha Fock matrix in ao basis set




.. c:var:: ao_bi_elec_integral_beta

    .. code:: text

        double precision, allocatable	:: ao_bi_elec_integral_alpha	(ao_num,ao_num)
        double precision, allocatable	:: ao_bi_elec_integral_beta	(ao_num,ao_num)

    File: :file:`fock_matrix_ks.irp.f`

    Alpha Fock matrix in ao basis set




.. c:var:: ao_potential_alpha_xc

    .. code:: text

        double precision, allocatable	:: ao_potential_alpha_xc	(ao_num,ao_num)
        double precision, allocatable	:: ao_potential_beta_xc	(ao_num,ao_num)

    File: :file:`pot_functionals.irp.f`

    




.. c:var:: ao_potential_beta_xc

    .. code:: text

        double precision, allocatable	:: ao_potential_alpha_xc	(ao_num,ao_num)
        double precision, allocatable	:: ao_potential_beta_xc	(ao_num,ao_num)

    File: :file:`pot_functionals.irp.f`

    




.. c:var:: e_correlation_dft

    .. code:: text

        double precision	:: e_correlation_dft

    File: :file:`pot_functionals.irp.f`

    




.. c:var:: e_exchange_dft

    .. code:: text

        double precision	:: e_exchange_dft

    File: :file:`pot_functionals.irp.f`

    




.. c:var:: extra_e_contrib_density

    .. code:: text

        double precision	:: extra_e_contrib_density

    File: :file:`ks_enery.irp.f`

    Extra contribution to the SCF energy coming from the density. 
    For a Hartree-Fock calculation: extra_e_contrib_density = 0 
    For a Kohn-Sham or Range-separated Kohn-Sham: the exchange/correlation - 1/2 trace of the V_xc potential




.. c:var:: fock_matrix_alpha_no_xc_ao

    .. code:: text

        double precision, allocatable	:: fock_matrix_alpha_no_xc_ao	(ao_num,ao_num)
        double precision, allocatable	:: fock_matrix_beta_no_xc_ao	(ao_num,ao_num)

    File: :file:`fock_matrix_ks.irp.f`

    Mono electronic an Coulomb matrix in ao basis set




.. c:var:: fock_matrix_ao_alpha

    .. code:: text

        double precision, allocatable	:: fock_matrix_ao_alpha	(ao_num,ao_num)
        double precision, allocatable	:: fock_matrix_ao_beta	(ao_num,ao_num)

    File: :file:`fock_matrix_ks.irp.f`

    Alpha Fock matrix in ao basis set




.. c:var:: fock_matrix_ao_beta

    .. code:: text

        double precision, allocatable	:: fock_matrix_ao_alpha	(ao_num,ao_num)
        double precision, allocatable	:: fock_matrix_ao_beta	(ao_num,ao_num)

    File: :file:`fock_matrix_ks.irp.f`

    Alpha Fock matrix in ao basis set




.. c:var:: fock_matrix_beta_no_xc_ao

    .. code:: text

        double precision, allocatable	:: fock_matrix_alpha_no_xc_ao	(ao_num,ao_num)
        double precision, allocatable	:: fock_matrix_beta_no_xc_ao	(ao_num,ao_num)

    File: :file:`fock_matrix_ks.irp.f`

    Mono electronic an Coulomb matrix in ao basis set




.. c:var:: fock_matrix_energy

    .. code:: text

        double precision	:: ks_energy
        double precision	:: two_electron_energy
        double precision	:: one_electron_energy
        double precision	:: fock_matrix_energy
        double precision	:: trace_potential_xc

    File: :file:`ks_enery.irp.f`

    Kohn-Sham energy containing the nuclear repulsion energy, and the various components of this quantity.




.. c:var:: ks_energy

    .. code:: text

        double precision	:: ks_energy
        double precision	:: two_electron_energy
        double precision	:: one_electron_energy
        double precision	:: fock_matrix_energy
        double precision	:: trace_potential_xc

    File: :file:`ks_enery.irp.f`

    Kohn-Sham energy containing the nuclear repulsion energy, and the various components of this quantity.




.. c:var:: one_electron_energy

    .. code:: text

        double precision	:: ks_energy
        double precision	:: two_electron_energy
        double precision	:: one_electron_energy
        double precision	:: fock_matrix_energy
        double precision	:: trace_potential_xc

    File: :file:`ks_enery.irp.f`

    Kohn-Sham energy containing the nuclear repulsion energy, and the various components of this quantity.




.. c:var:: trace_potential_xc

    .. code:: text

        double precision	:: ks_energy
        double precision	:: two_electron_energy
        double precision	:: one_electron_energy
        double precision	:: fock_matrix_energy
        double precision	:: trace_potential_xc

    File: :file:`ks_enery.irp.f`

    Kohn-Sham energy containing the nuclear repulsion energy, and the various components of this quantity.




.. c:var:: two_electron_energy

    .. code:: text

        double precision	:: ks_energy
        double precision	:: two_electron_energy
        double precision	:: one_electron_energy
        double precision	:: fock_matrix_energy
        double precision	:: trace_potential_xc

    File: :file:`ks_enery.irp.f`

    Kohn-Sham energy containing the nuclear repulsion energy, and the various components of this quantity.




Subroutines / functions
-----------------------



.. c:function:: check_coherence_functional

    .. code:: text

        subroutine check_coherence_functional

    File: :file:`ks_scf.irp.f`

    





.. c:function:: create_guess

    .. code:: text

        subroutine create_guess

    File: :file:`ks_scf.irp.f`

    Create a MO guess if no MOs are present in the EZFIO directory





.. c:function:: run

    .. code:: text

        subroutine run

    File: :file:`ks_scf.irp.f`

    Run SCF calculation





.. c:function:: srs_ks_cf

    .. code:: text

        subroutine srs_ks_cf

    File: :file:`ks_scf.irp.f`

    Produce `Kohn_Sham` MO orbital output: mo_basis.mo_tot_num mo_basis.mo_label mo_basis.ao_md5 mo_basis.mo_coef mo_basis.mo_occ output: kohn_sham.energy optional: mo_basis.mo_coef


