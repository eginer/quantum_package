.. _psiref_cas:

.. program:: psiref_cas

.. default-role:: option

==========
Psiref_CAS
==========

Reference wave function is defined as a |CAS| wave function. 
This module is required for |CAS-SD|, |MRPT| or |MRCC|.




Providers
---------


.. c:var:: idx_ref

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_ref_coef	(psi_det_size,n_states)
        integer, allocatable	:: idx_ref	(psi_det_size)
        integer	:: n_det_ref

    File: :file:`psi_ref.irp.f`

    CAS wave function, defined from the application of the CAS bitmask on the determinants. idx_cas gives the indice of the CAS determinant in psi_det.




.. c:var:: inv_norm_psi_ref

    .. code:: text

        double precision, allocatable	:: norm_psi_ref	(N_states)
        double precision, allocatable	:: inv_norm_psi_ref	(N_states)

    File: :file:`psi_ref.irp.f`

    




.. c:var:: n_det_ref

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_ref_coef	(psi_det_size,n_states)
        integer, allocatable	:: idx_ref	(psi_det_size)
        integer	:: n_det_ref

    File: :file:`psi_ref.irp.f`

    CAS wave function, defined from the application of the CAS bitmask on the determinants. idx_cas gives the indice of the CAS determinant in psi_det.




.. c:var:: norm_psi_ref

    .. code:: text

        double precision, allocatable	:: norm_psi_ref	(N_states)
        double precision, allocatable	:: inv_norm_psi_ref	(N_states)

    File: :file:`psi_ref.irp.f`

    




.. c:var:: psi_non_ref_coef_interm_norm

    .. code:: text

        double precision, allocatable	:: psi_non_ref_coef_interm_norm	(N_det_non_ref,N_states)

    File: :file:`psi_ref.irp.f`

    




.. c:var:: psi_ref

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_ref_coef	(psi_det_size,n_states)
        integer, allocatable	:: idx_ref	(psi_det_size)
        integer	:: n_det_ref

    File: :file:`psi_ref.irp.f`

    CAS wave function, defined from the application of the CAS bitmask on the determinants. idx_cas gives the indice of the CAS determinant in psi_det.




.. c:var:: psi_ref_coef

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_ref_coef	(psi_det_size,n_states)
        integer, allocatable	:: idx_ref	(psi_det_size)
        integer	:: n_det_ref

    File: :file:`psi_ref.irp.f`

    CAS wave function, defined from the application of the CAS bitmask on the determinants. idx_cas gives the indice of the CAS determinant in psi_det.




.. c:var:: psi_ref_coef_interm_norm

    .. code:: text

        double precision, allocatable	:: psi_ref_coef_interm_norm	(N_det_ref,N_states)

    File: :file:`psi_ref.irp.f`

    




.. c:var:: psi_ref_coef_inv

    .. code:: text

        double precision, allocatable	:: psi_ref_coef_inv	(psi_det_size,n_states)

    File: :file:`psi_ref.irp.f`

    1/psi_ref_coef




.. c:var:: psi_ref_coef_restart

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref_restart	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_ref_coef_restart	(psi_det_size,n_states)

    File: :file:`psi_ref.irp.f`

    Projection of the CAS wave function on the restart wave function.




.. c:var:: psi_ref_restart

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref_restart	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_ref_coef_restart	(psi_det_size,n_states)

    File: :file:`psi_ref.irp.f`

    Projection of the CAS wave function on the restart wave function.


