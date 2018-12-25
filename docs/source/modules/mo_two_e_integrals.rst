.. _mo_two_e_integrals:

.. program:: mo_two_e_integrals

.. default-role:: option

================
Integrals_Bielec
================

Here, all two-electron integrals (:math:`1/r_{12}`) are computed.
As they have 4 indices and many are zero, they are stored in a map, as defined
in :file:`Utils/map_module.f90`.

To fetch an |AO| integral, use the
`get_ao_bielec_integral(i,j,k,l,ao_integrals_map)` function, and
to fetch an |MO| integral, use
`get_mo_bielec_integral(i,j,k,l,mo_integrals_map)` or
`mo_bielec_integral(i,j,k,l)`.

The conventions are:

* For |AO| integrals : (ik|jl) = (11|22)
* For |MO| integrals : <ij|kl> = <12|12>






EZFIO parameters
----------------

.. option:: disk_access_mo_integrals

    Read/Write |MO| integrals from/to disk [ Write | Read | None ]

    Default: None

.. option:: mo_integrals_threshold

    If | <ij|kl> | < `mo_integrals_threshold` then <ij|kl> is zero

    Default: 1.e-15

.. option:: no_vvvv_integrals

    If `True`, computes all integrals except for the integrals having 4 virtual indices

    Default: False

.. option:: no_ivvv_integrals

    Can be switched on only if `no_vvvv_integrals` is `True`, then does not compute the integrals with 3 virtual indices and 1 belonging to the core inactive active orbitals

    Default: False

.. option:: no_vvv_integrals

    Can be switched on only if `no_vvvv_integrals` is `True`, then does not compute the integrals with 3 virtual orbitals

    Default: False


Providers
---------


.. c:var:: big_array_coulomb_integrals

    .. code:: text

        double precision, allocatable	:: big_array_coulomb_integrals	(mo_tot_num,mo_tot_num,mo_tot_num)
        double precision, allocatable	:: big_array_exchange_integrals	(mo_tot_num,mo_tot_num,mo_tot_num)

    File: :file:`integrals_3_index.irp.f`

    big_array_coulomb_integrals(i,j)  = <ij|ij> = (ii|jj) 
    big_array_exchange_integrals(i,j) = <ij|ji> = (ij|ij)




.. c:var:: big_array_exchange_integrals

    .. code:: text

        double precision, allocatable	:: big_array_coulomb_integrals	(mo_tot_num,mo_tot_num,mo_tot_num)
        double precision, allocatable	:: big_array_exchange_integrals	(mo_tot_num,mo_tot_num,mo_tot_num)

    File: :file:`integrals_3_index.irp.f`

    big_array_coulomb_integrals(i,j)  = <ij|ij> = (ii|jj) 
    big_array_exchange_integrals(i,j) = <ij|ji> = (ij|ij)




.. c:var:: core_energy

    .. code:: text

        double precision	:: core_energy

    File: :file:`core_quantities.irp.f`

    energy from the core : contains all core-core contributions




.. c:var:: core_fock_operator

    .. code:: text

        double precision, allocatable	:: core_fock_operator	(mo_tot_num,mo_tot_num)

    File: :file:`core_quantities.irp.f`

    this is the contribution to the Fock operator from the core electrons




.. c:var:: insert_into_mo_integrals_map

    .. code:: text

        subroutine insert_into_mo_integrals_map(n_integrals,                 &
        buffer_i, buffer_values, thr)

    File: :file:`map_integrals.irp.f`

    Create new entry into MO map, or accumulate in an existing entry




.. c:var:: mo_bielec_integral_jj

    .. code:: text

        double precision, allocatable	:: mo_bielec_integral_jj	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_exchange	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_anti	(mo_tot_num,mo_tot_num)

    File: :file:`mo_bi_integrals.irp.f`

    mo_bielec_integral_jj(i,j) = J_ij mo_bielec_integral_jj_exchange(i,j) = K_ij mo_bielec_integral_jj_anti(i,j) = J_ij - K_ij




.. c:var:: mo_bielec_integral_jj_anti

    .. code:: text

        double precision, allocatable	:: mo_bielec_integral_jj	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_exchange	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_anti	(mo_tot_num,mo_tot_num)

    File: :file:`mo_bi_integrals.irp.f`

    mo_bielec_integral_jj(i,j) = J_ij mo_bielec_integral_jj_exchange(i,j) = K_ij mo_bielec_integral_jj_anti(i,j) = J_ij - K_ij




.. c:var:: mo_bielec_integral_jj_anti_from_ao

    .. code:: text

        double precision, allocatable	:: mo_bielec_integral_jj_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_exchange_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_anti_from_ao	(mo_tot_num,mo_tot_num)

    File: :file:`mo_bi_integrals.irp.f`

    mo_bielec_integral_jj_from_ao(i,j) = J_ij mo_bielec_integral_jj_exchange_from_ao(i,j) = J_ij mo_bielec_integral_jj_anti_from_ao(i,j) = J_ij - K_ij




.. c:var:: mo_bielec_integral_jj_exchange

    .. code:: text

        double precision, allocatable	:: mo_bielec_integral_jj	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_exchange	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_anti	(mo_tot_num,mo_tot_num)

    File: :file:`mo_bi_integrals.irp.f`

    mo_bielec_integral_jj(i,j) = J_ij mo_bielec_integral_jj_exchange(i,j) = K_ij mo_bielec_integral_jj_anti(i,j) = J_ij - K_ij




.. c:var:: mo_bielec_integral_jj_exchange_from_ao

    .. code:: text

        double precision, allocatable	:: mo_bielec_integral_jj_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_exchange_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_anti_from_ao	(mo_tot_num,mo_tot_num)

    File: :file:`mo_bi_integrals.irp.f`

    mo_bielec_integral_jj_from_ao(i,j) = J_ij mo_bielec_integral_jj_exchange_from_ao(i,j) = J_ij mo_bielec_integral_jj_anti_from_ao(i,j) = J_ij - K_ij




.. c:var:: mo_bielec_integral_jj_from_ao

    .. code:: text

        double precision, allocatable	:: mo_bielec_integral_jj_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_exchange_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_jj_anti_from_ao	(mo_tot_num,mo_tot_num)

    File: :file:`mo_bi_integrals.irp.f`

    mo_bielec_integral_jj_from_ao(i,j) = J_ij mo_bielec_integral_jj_exchange_from_ao(i,j) = J_ij mo_bielec_integral_jj_anti_from_ao(i,j) = J_ij - K_ij




.. c:var:: mo_bielec_integral_vv_anti_from_ao

    .. code:: text

        double precision, allocatable	:: mo_bielec_integral_vv_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_vv_exchange_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_vv_anti_from_ao	(mo_tot_num,mo_tot_num)

    File: :file:`mo_bi_integrals.irp.f`

    mo_bielec_integral_vv_from_ao(i,j) = J_ij mo_bielec_integral_vv_exchange_from_ao(i,j) = J_ij mo_bielec_integral_vv_anti_from_ao(i,j) = J_ij - K_ij but only for the virtual orbitals




.. c:var:: mo_bielec_integral_vv_exchange_from_ao

    .. code:: text

        double precision, allocatable	:: mo_bielec_integral_vv_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_vv_exchange_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_vv_anti_from_ao	(mo_tot_num,mo_tot_num)

    File: :file:`mo_bi_integrals.irp.f`

    mo_bielec_integral_vv_from_ao(i,j) = J_ij mo_bielec_integral_vv_exchange_from_ao(i,j) = J_ij mo_bielec_integral_vv_anti_from_ao(i,j) = J_ij - K_ij but only for the virtual orbitals




.. c:var:: mo_bielec_integral_vv_from_ao

    .. code:: text

        double precision, allocatable	:: mo_bielec_integral_vv_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_vv_exchange_from_ao	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_bielec_integral_vv_anti_from_ao	(mo_tot_num,mo_tot_num)

    File: :file:`mo_bi_integrals.irp.f`

    mo_bielec_integral_vv_from_ao(i,j) = J_ij mo_bielec_integral_vv_exchange_from_ao(i,j) = J_ij mo_bielec_integral_vv_anti_from_ao(i,j) = J_ij - K_ij but only for the virtual orbitals




.. c:var:: mo_bielec_integrals_in_map

    .. code:: text

        logical	:: mo_bielec_integrals_in_map

    File: :file:`mo_bi_integrals.irp.f`

    If True, the map of MO bielectronic integrals is provided




.. c:var:: mo_integrals_cache

    .. code:: text

        double precision, allocatable	:: mo_integrals_cache	(0_8:128_8*128_8*128_8*128_8)

    File: :file:`map_integrals.irp.f`

    Cache of MO integrals for fast access




.. c:var:: mo_integrals_cache_max

    .. code:: text

        integer*4	:: mo_integrals_cache_min
        integer*4	:: mo_integrals_cache_max
        integer*8	:: mo_integrals_cache_min_8
        integer*8	:: mo_integrals_cache_max_8

    File: :file:`map_integrals.irp.f`

    Min and max values of the MOs for which the integrals are in the cache




.. c:var:: mo_integrals_cache_max_8

    .. code:: text

        integer*4	:: mo_integrals_cache_min
        integer*4	:: mo_integrals_cache_max
        integer*8	:: mo_integrals_cache_min_8
        integer*8	:: mo_integrals_cache_max_8

    File: :file:`map_integrals.irp.f`

    Min and max values of the MOs for which the integrals are in the cache




.. c:var:: mo_integrals_cache_min

    .. code:: text

        integer*4	:: mo_integrals_cache_min
        integer*4	:: mo_integrals_cache_max
        integer*8	:: mo_integrals_cache_min_8
        integer*8	:: mo_integrals_cache_max_8

    File: :file:`map_integrals.irp.f`

    Min and max values of the MOs for which the integrals are in the cache




.. c:var:: mo_integrals_cache_min_8

    .. code:: text

        integer*4	:: mo_integrals_cache_min
        integer*4	:: mo_integrals_cache_max
        integer*8	:: mo_integrals_cache_min_8
        integer*8	:: mo_integrals_cache_max_8

    File: :file:`map_integrals.irp.f`

    Min and max values of the MOs for which the integrals are in the cache




.. c:var:: mo_integrals_map

    .. code:: text

        type(map_type)	:: mo_integrals_map

    File: :file:`map_integrals.irp.f`

    MO integrals




.. c:var:: read_mo_integrals

    .. code:: text

        logical	:: read_mo_integrals
        logical	:: write_mo_integrals

    File: :file:`read_write.irp.f`

    Flag to read or write the |MO| integrals




.. c:var:: write_mo_integrals

    .. code:: text

        logical	:: read_mo_integrals
        logical	:: write_mo_integrals

    File: :file:`read_write.irp.f`

    Flag to read or write the |MO| integrals




Subroutines / functions
-----------------------



.. c:function:: add_integrals_to_map

    .. code:: text

        subroutine add_integrals_to_map(mask_ijkl)

    File: :file:`mo_bi_integrals.irp.f`

    Adds integrals to tha MO map according to some bitmask





.. c:function:: add_integrals_to_map_no_exit_34

    .. code:: text

        subroutine add_integrals_to_map_no_exit_34(mask_ijkl)

    File: :file:`mo_bi_integrals.irp.f`

    Adds integrals to tha MO map according to some bitmask





.. c:function:: add_integrals_to_map_three_indices

    .. code:: text

        subroutine add_integrals_to_map_three_indices(mask_ijk)

    File: :file:`mo_bi_integrals.irp.f`

    Adds integrals to tha MO map according to some bitmask





.. c:function:: clear_mo_map

    .. code:: text

        subroutine clear_mo_map

    File: :file:`mo_bi_integrals.irp.f`

    Frees the memory of the MO map





.. c:function:: dump_mo_integrals

    .. code:: text

        subroutine dump_mo_integrals(filename)

    File: :file:`map_integrals.irp.f`

    Save to disk the |MO| integrals





.. c:function:: get_mo_bielec_integral

    .. code:: text

        double precision function get_mo_bielec_integral(i,j,k,l,map)

    File: :file:`map_integrals.irp.f`

    Returns one integral <ij|kl> in the MO basis





.. c:function:: get_mo_bielec_integrals

    .. code:: text

        subroutine get_mo_bielec_integrals(j,k,l,sze,out_val,map)

    File: :file:`map_integrals.irp.f`

    Returns multiple integrals <ij|kl> in the MO basis, all i for j,k,l fixed.





.. c:function:: get_mo_bielec_integrals_coulomb_ii

    .. code:: text

        subroutine get_mo_bielec_integrals_coulomb_ii(k,l,sze,out_val,map)

    File: :file:`map_integrals.irp.f`

    Returns multiple integrals <ki|li> k(1)i(2) 1/r12 l(1)i(2) :: out_val(i1) for k,l fixed.





.. c:function:: get_mo_bielec_integrals_exch_ii

    .. code:: text

        subroutine get_mo_bielec_integrals_exch_ii(k,l,sze,out_val,map)

    File: :file:`map_integrals.irp.f`

    Returns multiple integrals <ki|il> k(1)i(2) 1/r12 i(1)l(2) :: out_val(i1) for k,l fixed.





.. c:function:: get_mo_bielec_integrals_i1j1

    .. code:: text

        subroutine get_mo_bielec_integrals_i1j1(k,l,sze,out_array,map)

    File: :file:`map_integrals.irp.f`

    Returns multiple integrals <ik|jl> in the MO basis, all i(1)j(1) 1/r12 k(2)l(2) i, j for k,l fixed.





.. c:function:: get_mo_bielec_integrals_ij

    .. code:: text

        subroutine get_mo_bielec_integrals_ij(k,l,sze,out_array,map)

    File: :file:`map_integrals.irp.f`

    Returns multiple integrals <ij|kl> in the MO basis, all i(1)j(2) 1/r12 k(1)l(2) i, j for k,l fixed.





.. c:function:: get_mo_map_size

    .. code:: text

        integer*8 function get_mo_map_size()

    File: :file:`map_integrals.irp.f`

    Return the number of elements in the MO map





.. c:function:: load_mo_integrals

    .. code:: text

        integer function load_mo_integrals(filename)

    File: :file:`map_integrals.irp.f`

    Read from disk the |MO| integrals





.. c:function:: mo_bielec_integral

    .. code:: text

        double precision function mo_bielec_integral(i,j,k,l)

    File: :file:`map_integrals.irp.f`

    Returns one integral <ij|kl> in the MO basis





.. c:function:: mo_bielec_integrals_index

    .. code:: text

        subroutine mo_bielec_integrals_index(i,j,k,l,i1)

    File: :file:`mo_bi_integrals.irp.f`

    Computes an unique index for i,j,k,l integrals


