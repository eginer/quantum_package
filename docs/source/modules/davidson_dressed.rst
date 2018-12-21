.. _davidson_dressed:

.. program:: davidson_dressed

.. default-role:: option

===============
DavidsonDressed
===============

Davidson with single-column dressing.




Providers
---------


.. c:var:: ci_eigenvectors_dressed

    .. code:: text

        double precision, allocatable	:: ci_electronic_energy_dressed	(N_states_diag)
        double precision, allocatable	:: ci_eigenvectors_dressed	(N_det,N_states_diag)
        double precision, allocatable	:: ci_eigenvectors_s2_dressed	(N_states_diag)

    File: :file:`diagonalize_ci.irp.f`

    Eigenvectors/values of the CI matrix




.. c:var:: ci_eigenvectors_s2_dressed

    .. code:: text

        double precision, allocatable	:: ci_electronic_energy_dressed	(N_states_diag)
        double precision, allocatable	:: ci_eigenvectors_dressed	(N_det,N_states_diag)
        double precision, allocatable	:: ci_eigenvectors_s2_dressed	(N_states_diag)

    File: :file:`diagonalize_ci.irp.f`

    Eigenvectors/values of the CI matrix




.. c:var:: ci_electronic_energy_dressed

    .. code:: text

        double precision, allocatable	:: ci_electronic_energy_dressed	(N_states_diag)
        double precision, allocatable	:: ci_eigenvectors_dressed	(N_det,N_states_diag)
        double precision, allocatable	:: ci_eigenvectors_s2_dressed	(N_states_diag)

    File: :file:`diagonalize_ci.irp.f`

    Eigenvectors/values of the CI matrix




.. c:var:: ci_energy_dressed

    .. code:: text

        double precision, allocatable	:: ci_energy_dressed	(N_states_diag)

    File: :file:`diagonalize_ci.irp.f`

    N_states lowest eigenvalues of the CI matrix




.. c:var:: h_matrix_dressed

    .. code:: text

        double precision, allocatable	:: h_matrix_dressed	(N_det,N_det)

    File: :file:`diagonalize_ci.irp.f`

    Dressed H with Delta_ij




Subroutines / functions
-----------------------



.. c:function:: diagonalize_ci_dressed

    .. code:: text

        subroutine diagonalize_CI_dressed

    File: :file:`diagonalize_ci.irp.f`

    Replace the coefficients of the CI states by the coefficients of the eigenstates of the CI matrix


