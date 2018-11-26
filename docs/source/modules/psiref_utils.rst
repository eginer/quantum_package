.. _psiref_utils:

.. program:: psiref_utils

.. default-role:: option

============
Psiref_Utils
============


Utilities related to the use of a reference wave function. This module
needs to be loaded with any `psi_ref_*` module.





Providers
---------


.. c:var:: h_matrix_ref

    .. code:: text

        double precision, allocatable	:: h_matrix_ref	(N_det_ref,N_det_ref)

    File: :file:`psi_ref_utils.irp.f`

    




.. c:var:: holes_operators

    .. code:: text

        integer(bit_kind), allocatable	:: holes_operators	(N_int,2)
        integer(bit_kind), allocatable	:: particles_operators	(N_int,2)

    File: :file:`psi_ref_excitations_operators.irp.f`

    holes_operators represents an array of integers where all the holes have been done going from psi_ref to psi_non_ref particles_operators represents an array of integers where all the particles have been done going from psi_ref to psi_non_ref




.. c:var:: idx_non_ref

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_non_ref_coef	(psi_det_size,n_states)
        integer, allocatable	:: idx_non_ref	(psi_det_size)
        integer, allocatable	:: idx_non_ref_rev	(psi_det_size)
        integer	:: n_det_non_ref

    File: :file:`psi_ref_utils.irp.f`

    Set of determinants which are not part of the reference, defined from the application of the reference bitmask on the determinants. idx_non_ref gives the indice of the determinant in psi_det. idx_non_ref_rev gives the reverse.




.. c:var:: idx_non_ref_from_sorted

    .. code:: text

        integer, allocatable	:: idx_non_ref_from_sorted	(N_det)

    File: :file:`psi_ref_utils.irp.f`

    




.. c:var:: idx_non_ref_rev

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_non_ref_coef	(psi_det_size,n_states)
        integer, allocatable	:: idx_non_ref	(psi_det_size)
        integer, allocatable	:: idx_non_ref_rev	(psi_det_size)
        integer	:: n_det_non_ref

    File: :file:`psi_ref_utils.irp.f`

    Set of determinants which are not part of the reference, defined from the application of the reference bitmask on the determinants. idx_non_ref gives the indice of the determinant in psi_det. idx_non_ref_rev gives the reverse.




.. c:var:: n_det_non_ref

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_non_ref_coef	(psi_det_size,n_states)
        integer, allocatable	:: idx_non_ref	(psi_det_size)
        integer, allocatable	:: idx_non_ref_rev	(psi_det_size)
        integer	:: n_det_non_ref

    File: :file:`psi_ref_utils.irp.f`

    Set of determinants which are not part of the reference, defined from the application of the reference bitmask on the determinants. idx_non_ref gives the indice of the determinant in psi_det. idx_non_ref_rev gives the reverse.




.. c:var:: particles_operators

    .. code:: text

        integer(bit_kind), allocatable	:: holes_operators	(N_int,2)
        integer(bit_kind), allocatable	:: particles_operators	(N_int,2)

    File: :file:`psi_ref_excitations_operators.irp.f`

    holes_operators represents an array of integers where all the holes have been done going from psi_ref to psi_non_ref particles_operators represents an array of integers where all the particles have been done going from psi_ref to psi_non_ref




.. c:var:: psi_non_ref

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_non_ref_coef	(psi_det_size,n_states)
        integer, allocatable	:: idx_non_ref	(psi_det_size)
        integer, allocatable	:: idx_non_ref_rev	(psi_det_size)
        integer	:: n_det_non_ref

    File: :file:`psi_ref_utils.irp.f`

    Set of determinants which are not part of the reference, defined from the application of the reference bitmask on the determinants. idx_non_ref gives the indice of the determinant in psi_det. idx_non_ref_rev gives the reverse.




.. c:var:: psi_non_ref_coef

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_non_ref_coef	(psi_det_size,n_states)
        integer, allocatable	:: idx_non_ref	(psi_det_size)
        integer, allocatable	:: idx_non_ref_rev	(psi_det_size)
        integer	:: n_det_non_ref

    File: :file:`psi_ref_utils.irp.f`

    Set of determinants which are not part of the reference, defined from the application of the reference bitmask on the determinants. idx_non_ref gives the indice of the determinant in psi_det. idx_non_ref_rev gives the reverse.




.. c:var:: psi_non_ref_coef_restart

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref_restart	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_non_ref_coef_restart	(psi_det_size,n_states)

    File: :file:`psi_ref_utils.irp.f`

    Set of determinants which are not part of the reference, defined from the application of the reference bitmask on the determinants. idx_non_ref gives the indice of the determinant in psi_det. But this is with respect to the restart wave function.




.. c:var:: psi_non_ref_coef_sorted_bit

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref_sorted_bit	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_non_ref_coef_sorted_bit	(psi_det_size,N_states)

    File: :file:`psi_ref_utils.irp.f`

    Reference determinants sorted to accelerate the search of a random determinant in the wave function.




.. c:var:: psi_non_ref_coef_transp

    .. code:: text

        double precision, allocatable	:: psi_non_ref_coef_transp	(n_states,psi_det_size)

    File: :file:`psi_ref_utils.irp.f`

    Transposed psi_non_ref_coef




.. c:var:: psi_non_ref_restart

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref_restart	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_non_ref_coef_restart	(psi_det_size,n_states)

    File: :file:`psi_ref_utils.irp.f`

    Set of determinants which are not part of the reference, defined from the application of the reference bitmask on the determinants. idx_non_ref gives the indice of the determinant in psi_det. But this is with respect to the restart wave function.




.. c:var:: psi_non_ref_sorted_bit

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref_sorted_bit	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_non_ref_coef_sorted_bit	(psi_det_size,N_states)

    File: :file:`psi_ref_utils.irp.f`

    Reference determinants sorted to accelerate the search of a random determinant in the wave function.




.. c:var:: psi_ref_coef_diagonalized

    .. code:: text

        double precision, allocatable	:: psi_ref_coef_diagonalized	(N_det_ref,N_states)
        double precision, allocatable	:: psi_ref_energy_diagonalized	(N_states)

    File: :file:`psi_ref_utils.irp.f`

    




.. c:var:: psi_ref_coef_normalized

    .. code:: text

        double precision, allocatable	:: psi_ref_coef_normalized	(psi_det_size,n_states)

    File: :file:`psi_ref_utils.irp.f`

    Normalized coefficients of the reference




.. c:var:: psi_ref_coef_sorted_bit

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref_sorted_bit	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_ref_coef_sorted_bit	(psi_det_size,N_states)

    File: :file:`psi_ref_utils.irp.f`

    Reference determinants sorted to accelerate the search of a random determinant in the wave function.




.. c:var:: psi_ref_coef_transp

    .. code:: text

        double precision, allocatable	:: psi_ref_coef_transp	(n_states,psi_det_size)

    File: :file:`psi_ref_utils.irp.f`

    Transposed psi_ref_coef




.. c:var:: psi_ref_energy

    .. code:: text

        double precision, allocatable	:: psi_ref_energy	(N_states)

    File: :file:`psi_ref_utils.irp.f`

    




.. c:var:: psi_ref_energy_diagonalized

    .. code:: text

        double precision, allocatable	:: psi_ref_coef_diagonalized	(N_det_ref,N_states)
        double precision, allocatable	:: psi_ref_energy_diagonalized	(N_states)

    File: :file:`psi_ref_utils.irp.f`

    




.. c:var:: psi_ref_sorted_bit

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref_sorted_bit	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_ref_coef_sorted_bit	(psi_det_size,N_states)

    File: :file:`psi_ref_utils.irp.f`

    Reference determinants sorted to accelerate the search of a random determinant in the wave function.




.. c:var:: ref_hamiltonian_matrix

    .. code:: text

        double precision, allocatable	:: ref_hamiltonian_matrix	(n_det_ref,n_det_ref)

    File: :file:`psi_ref_utils.irp.f`

    H matrix in the Reference space




Subroutines / functions
-----------------------



.. c:function:: extract_ref

    .. code:: text

        subroutine extract_ref

    File: :file:`extract_ref.irp.f`

    Replaces the total wave function by the normalized projection on the reference





.. c:function:: get_index_in_psi_ref_sorted_bit

    .. code:: text

        integer function get_index_in_psi_ref_sorted_bit(key,Nint)

    File: :file:`psi_ref_utils.irp.f`

    Returns the index of the determinant in the ``psi_ref_sorted_bit`` array





.. c:function:: is_in_psi_ref

    .. code:: text

        logical function is_in_psi_ref(key,Nint)

    File: :file:`psi_ref_utils.irp.f`

    True if the determinant ``det`` is in the wave function


