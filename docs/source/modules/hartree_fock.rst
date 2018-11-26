.. _hartree_fock:

.. program:: hartree_fock

.. default-role:: option

============
Hartree-Fock
============


The Hartree-Fock module performs *Restricted* Hartree-Fock calculations (the
spatial part of the |MOs| is common for alpha and beta spinorbitals).

The Hartree-Fock program does the following:

#. Compute/Read all the one- and two-electron integrals, and store them in memory
#. Check in the |EZFIO| database if there is a set of |MOs|. If there is, it
   will read them as initial guess. Otherwise, it will create a guess.
#. Perform the |SCF| iterations

At each iteration, the |MOs| are saved in the |EZFIO| database. Hence, if the calculation
crashes for any unexpected reason, the calculation can be restarted by running again
the |SCF| with the same |EZFIO| database.

The `DIIS`_ algorithm is implemented, as well as the `level-shifting`_ method.
If the |SCF| does not converge, try again with a higher value of :option:`level_shift`.

To start a calculation from scratch, the simplest way is to remove the
``mo_basis`` directory from the |EZFIO| database, and run the |SCF| again.




.. _DIIS: https://en.wikipedia.org/w/index.php?title=DIIS
.. _level-shifting: https://doi.org/10.1002/qua.560070407






EZFIO parameters
----------------

.. option:: max_dim_diis

    Maximum size of the |DIIS| extrapolation procedure

    Default: 15

.. option:: threshold_diis

    Threshold on the convergence of the |DIIS| error vector during a Hartree-Fock calculation. If 0. is chosen, the square root of thresh_scf will be used.

    Default: 0.

.. option:: thresh_scf

    Threshold on the convergence of the Hartree Fock energy.

    Default: 1.e-10

.. option:: n_it_scf_max

    Maximum number of |SCF| iterations

    Default: 500

.. option:: level_shift

    Initial value of the energy shift on the virtual |MOs|

    Default: 0.0

.. option:: scf_algorithm

    Type of |SCF| algorithm used. Possible choices are [ Simple | DIIS]

    Default: DIIS

.. option:: mo_guess_type

    Initial MO guess. Can be [ Huckel | HCore ]

    Default: Huckel

.. option:: energy

    Calculated HF energy


.. option:: no_oa_or_av_opt

    If |true|, skip the (inactive+core) --> (active) and the (active) --> (virtual) orbital rotations within the |SCF| procedure

    Default: False


Providers
---------


.. c:var:: ao_bi_elec_integral_alpha

    .. code:: text

        double precision, allocatable	:: ao_bi_elec_integral_alpha	(ao_num,ao_num)
        double precision, allocatable	:: ao_bi_elec_integral_beta	(ao_num,ao_num)

    File: :file:`Fock_matrix.irp.f`

    Alpha Fock matrix in AO basis set




.. c:var:: ao_bi_elec_integral_beta

    .. code:: text

        double precision, allocatable	:: ao_bi_elec_integral_alpha	(ao_num,ao_num)
        double precision, allocatable	:: ao_bi_elec_integral_beta	(ao_num,ao_num)

    File: :file:`Fock_matrix.irp.f`

    Alpha Fock matrix in AO basis set




.. c:var:: diagonal_fock_matrix_mo

    .. code:: text

        double precision, allocatable	:: diagonal_fock_matrix_mo	(mo_tot_num)
        double precision, allocatable	:: eigenvectors_fock_matrix_mo	(ao_num,mo_tot_num)

    File: :file:`diagonalize_fock.irp.f`

    Diagonal Fock matrix in the MO basis




.. c:var:: diagonal_fock_matrix_mo_sum

    .. code:: text

        double precision, allocatable	:: diagonal_fock_matrix_mo_sum	(mo_tot_num)

    File: :file:`diagonalize_fock.irp.f`

    diagonal element of the fock matrix calculated as the sum over all the interactions with all the electrons in the RHF determinant diagonal_Fock_matrix_mo_sum(i) = sum_{j=1, N_elec} 2 J_ij -K_ij




.. c:var:: eigenvalues_fock_matrix_ao

    .. code:: text

        double precision, allocatable	:: eigenvalues_fock_matrix_ao	(AO_num)
        double precision, allocatable	:: eigenvectors_fock_matrix_ao	(AO_num,AO_num)

    File: :file:`DIIS.irp.f`

    Eigenvalues and eigenvectors of the Fock matrix over the AO basis




.. c:var:: eigenvectors_fock_matrix_ao

    .. code:: text

        double precision, allocatable	:: eigenvalues_fock_matrix_ao	(AO_num)
        double precision, allocatable	:: eigenvectors_fock_matrix_ao	(AO_num,AO_num)

    File: :file:`DIIS.irp.f`

    Eigenvalues and eigenvectors of the Fock matrix over the AO basis




.. c:var:: eigenvectors_fock_matrix_mo

    .. code:: text

        double precision, allocatable	:: diagonal_fock_matrix_mo	(mo_tot_num)
        double precision, allocatable	:: eigenvectors_fock_matrix_mo	(ao_num,mo_tot_num)

    File: :file:`diagonalize_fock.irp.f`

    Diagonal Fock matrix in the MO basis




.. c:var:: extrapolate_fock_matrix

    .. code:: text

        subroutine extrapolate_Fock_matrix(      &
        error_matrix_DIIS,Fock_matrix_DIIS,    &
        Fock_matrix_AO_,size_Fock_matrix_AO,   &
        iteration_SCF,dim_DIIS                 &
        )

    File: :file:`Roothaan_Hall_SCF.irp.f`

    Compute the extrapolated Fock matrix using the DIIS procedure




.. c:var:: fock_matrix_ao

    .. code:: text

        double precision, allocatable	:: fock_matrix_ao	(ao_num,ao_num)

    File: :file:`Fock_matrix.irp.f`

    Fock matrix in AO basis set




.. c:var:: fock_matrix_ao_alpha

    .. code:: text

        double precision, allocatable	:: fock_matrix_ao_alpha	(ao_num,ao_num)
        double precision, allocatable	:: fock_matrix_ao_beta	(ao_num,ao_num)

    File: :file:`Fock_matrix.irp.f`

    Alpha Fock matrix in AO basis set




.. c:var:: fock_matrix_ao_beta

    .. code:: text

        double precision, allocatable	:: fock_matrix_ao_alpha	(ao_num,ao_num)
        double precision, allocatable	:: fock_matrix_ao_beta	(ao_num,ao_num)

    File: :file:`Fock_matrix.irp.f`

    Alpha Fock matrix in AO basis set




.. c:var:: fock_matrix_diag_mo

    .. code:: text

        double precision, allocatable	:: fock_matrix_mo	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: fock_matrix_diag_mo	(mo_tot_num)

    File: :file:`Fock_matrix.irp.f`

    Fock matrix on the MO basis. For open shells, the ROHF Fock Matrix is 
    |   F-K    |  F + K/2  |    F     | |---------------------------------| | F + K/2  |     F     |  F - K/2 | |---------------------------------| |    F     |  F - K/2  |  F + K   | 
    F = 1/2 (Fa + Fb) 
    K = Fb - Fa 





.. c:var:: fock_matrix_mo

    .. code:: text

        double precision, allocatable	:: fock_matrix_mo	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: fock_matrix_diag_mo	(mo_tot_num)

    File: :file:`Fock_matrix.irp.f`

    Fock matrix on the MO basis. For open shells, the ROHF Fock Matrix is 
    |   F-K    |  F + K/2  |    F     | |---------------------------------| | F + K/2  |     F     |  F - K/2 | |---------------------------------| |    F     |  F - K/2  |  F + K   | 
    F = 1/2 (Fa + Fb) 
    K = Fb - Fa 





.. c:var:: fock_matrix_mo_alpha

    .. code:: text

        double precision, allocatable	:: fock_matrix_mo_alpha	(mo_tot_num,mo_tot_num)

    File: :file:`Fock_matrix.irp.f`

    Fock matrix on the MO basis




.. c:var:: fock_matrix_mo_beta

    .. code:: text

        double precision, allocatable	:: fock_matrix_mo_beta	(mo_tot_num,mo_tot_num)

    File: :file:`Fock_matrix.irp.f`

    Fock matrix on the MO basis




.. c:var:: fps_spf_matrix_ao

    .. code:: text

        double precision, allocatable	:: fps_spf_matrix_ao	(AO_num,AO_num)

    File: :file:`DIIS.irp.f`

    Commutator FPS - SPF




.. c:var:: fps_spf_matrix_mo

    .. code:: text

        double precision, allocatable	:: fps_spf_matrix_mo	(mo_tot_num,mo_tot_num)

    File: :file:`DIIS.irp.f`

    Commutator FPS - SPF in MO basis




.. c:var:: hf_density_matrix_ao

    .. code:: text

        double precision, allocatable	:: hf_density_matrix_ao	(ao_num,ao_num)

    File: :file:`HF_density_matrix_ao.irp.f`

    S^{-1}.P.S^{-1}  where P = C.C^t




.. c:var:: hf_density_matrix_ao_alpha

    .. code:: text

        double precision, allocatable	:: hf_density_matrix_ao_alpha	(ao_num,ao_num)

    File: :file:`HF_density_matrix_ao.irp.f`

    S^{-1}.P_alpha.S^{-1}




.. c:var:: hf_density_matrix_ao_beta

    .. code:: text

        double precision, allocatable	:: hf_density_matrix_ao_beta	(ao_num,ao_num)

    File: :file:`HF_density_matrix_ao.irp.f`

    S^{-1}.P_beta.S^{-1}




.. c:var:: hf_energy

    .. code:: text

        double precision	:: hf_energy

    File: :file:`Fock_matrix.irp.f`

    Hartree-Fock energy




.. c:var:: threshold_diis_nonzero

    .. code:: text

        double precision	:: threshold_diis_nonzero

    File: :file:`DIIS.irp.f`

    If threshold_DIIS is zero, choose sqrt(thresh_scf)




Subroutines / functions
-----------------------



.. c:function:: create_guess

    .. code:: text

        subroutine create_guess

    File: :file:`SCF.irp.f`

    Create a MO guess if no MOs are present in the EZFIO directory





.. c:function:: damping_scf

    .. code:: text

        subroutine damping_SCF

    File: :file:`damping_SCF.irp.f`

    





.. c:function:: huckel_guess

    .. code:: text

        subroutine huckel_guess

    File: :file:`huckel.irp.f`

    Build the MOs using the extended Huckel model





.. c:function:: roothaan_hall_scf

    .. code:: text

        subroutine Roothaan_Hall_SCF

    File: :file:`Roothaan_Hall_SCF.irp.f`

    Roothaan-Hall algorithm for SCF Hartree-Fock calculation





.. c:function:: run

    .. code:: text

        subroutine run

    File: :file:`SCF.irp.f`

    Run SCF calculation





.. c:function:: scf

    .. code:: text

        subroutine scf

    File: :file:`SCF.irp.f`

    Produce `Hartree_Fock` MO orbital output: mo_basis.mo_tot_num mo_basis.mo_label mo_basis.ao_md5 mo_basis.mo_coef mo_basis.mo_occ output: hartree_fock.energy optional: mo_basis.mo_coef


