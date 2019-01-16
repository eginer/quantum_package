.. _mo_two_e_erf_ints: 
 
.. program:: mo_two_e_erf_ints 
 
.. default-role:: option 
 
======================
mo_two_e_erf_ints
======================

Here, all two-electron integrals (:math:`erf({\mu}_{erf} * r_{12})/r_{12}`) are computed.
As they have 4 indices and many are zero, they are stored in a map, as defined
in :file:`Utils/map_module.f90`.

The range separation parameter :math:`{\mu}_{erf}` is the variable :option:`ao_two_e_erf_ints mu_erf`.

To fetch an |MO| integral, use
`get_mo_two_e_integral_erf(i,j,k,l,mo_integrals_map_erf)`

The conventions are:

* For |MO| integrals : <ij|kl> = <12|12>

Be aware that it might not be the same conventions for |MO| and |AO| integrals.


 
 
 
EZFIO parameters 
---------------- 
 
.. option:: io_mo_two_e_integrals_erf
 
    Read/Write MO integrals with the long range interaction from/to disk [    Write | Read | None ]
 
    Default: None
 
 
Providers 
--------- 
 

.. c:var:: core_energy_erf

    .. code:: text

        double precision	:: core_energy_erf

    File: :file:`core_quantities_erf.irp.f`

    energy from the core : contains all core-core contributionswith the erf interaction


 

.. c:var:: core_fock_operator_erf

    .. code:: text

        double precision, allocatable	:: core_fock_operator_erf	(mo_num,mo_num)

    File: :file:`core_quantities_erf.irp.f`

    this is the contribution to the Fock operator from the core electrons with the erf interaction


 

.. c:var:: insert_into_mo_integrals_erf_map

    .. code:: text

        subroutine insert_into_mo_integrals_erf_map(n_integrals,                 &
              buffer_i, buffer_values, thr)

    File: :file:`map_integrals_erf.irp.f`

    Create new entry into |MO| map, or accumulate in an existing entry


 

.. c:var:: int_erf_3_index

    .. code:: text

        double precision, allocatable	:: int_erf_3_index	(mo_num,mo_num,mo_num)
        double precision, allocatable	:: int_erf_3_index_exc	(mo_num,mo_num,mo_num)

    File: :file:`ints_erf_3_index.irp.f`

    int_erf_3_index(i,j)     = <ij|ij> = (ii|jj) with the erf interaction 

    int_erf_3_index_exc(i,j) = <ij|ji> = (ij|ij) with the erf interaction


 

.. c:var:: int_erf_3_index_exc

    .. code:: text

        double precision, allocatable	:: int_erf_3_index	(mo_num,mo_num,mo_num)
        double precision, allocatable	:: int_erf_3_index_exc	(mo_num,mo_num,mo_num)

    File: :file:`ints_erf_3_index.irp.f`

    int_erf_3_index(i,j)     = <ij|ij> = (ii|jj) with the erf interaction 

    int_erf_3_index_exc(i,j) = <ij|ji> = (ij|ij) with the erf interaction


 

.. c:var:: mo_integrals_erf_cache

    .. code:: text

        double precision, allocatable	:: mo_integrals_erf_cache	(0:64*64*64*64)

    File: :file:`map_integrals_erf.irp.f`

    Cache of |MO| integrals for fast access


 

.. c:var:: mo_integrals_erf_cache_max

    .. code:: text

        integer	:: mo_integrals_erf_cache_min
        integer	:: mo_integrals_erf_cache_max

    File: :file:`map_integrals_erf.irp.f`

    Min and max values of the MOs for which the integrals are in the cache


 

.. c:var:: mo_integrals_erf_cache_min

    .. code:: text

        integer	:: mo_integrals_erf_cache_min
        integer	:: mo_integrals_erf_cache_max

    File: :file:`map_integrals_erf.irp.f`

    Min and max values of the MOs for which the integrals are in the cache


 

.. c:var:: mo_integrals_erf_map

    .. code:: text

        type(map_type)	:: mo_integrals_erf_map

    File: :file:`map_integrals_erf.irp.f`

    |MO| integrals


 

.. c:var:: mo_two_e_int_erf_jj

    .. code:: text

        double precision, allocatable	:: mo_two_e_int_erf_jj	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_exchange	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_anti	(mo_num,mo_num)

    File: :file:`mo_bi_integrals_erf.irp.f`

    mo_two_e_integrals_jj(i,j) = J_ij mo_two_e_integrals_jj_exchange(i,j) = K_ij mo_two_e_integrals_jj_anti(i,j) = J_ij - K_ij


 

.. c:var:: mo_two_e_int_erf_jj_anti

    .. code:: text

        double precision, allocatable	:: mo_two_e_int_erf_jj	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_exchange	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_anti	(mo_num,mo_num)

    File: :file:`mo_bi_integrals_erf.irp.f`

    mo_two_e_integrals_jj(i,j) = J_ij mo_two_e_integrals_jj_exchange(i,j) = K_ij mo_two_e_integrals_jj_anti(i,j) = J_ij - K_ij


 

.. c:var:: mo_two_e_int_erf_jj_anti_from_ao

    .. code:: text

        double precision, allocatable	:: mo_two_e_int_erf_jj_from_ao	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_exchange_from_ao	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_anti_from_ao	(mo_num,mo_num)

    File: :file:`mo_bi_integrals_erf.irp.f`

    mo_two_e_integral_jj_from_ao(i,j) = J_ij mo_two_e_integrals_jj_exchange_from_ao(i,j) = J_ij mo_two_e_integrals_jj_anti_from_ao(i,j) = J_ij - K_ij


 

.. c:var:: mo_two_e_int_erf_jj_exchange

    .. code:: text

        double precision, allocatable	:: mo_two_e_int_erf_jj	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_exchange	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_anti	(mo_num,mo_num)

    File: :file:`mo_bi_integrals_erf.irp.f`

    mo_two_e_integrals_jj(i,j) = J_ij mo_two_e_integrals_jj_exchange(i,j) = K_ij mo_two_e_integrals_jj_anti(i,j) = J_ij - K_ij


 

.. c:var:: mo_two_e_int_erf_jj_exchange_from_ao

    .. code:: text

        double precision, allocatable	:: mo_two_e_int_erf_jj_from_ao	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_exchange_from_ao	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_anti_from_ao	(mo_num,mo_num)

    File: :file:`mo_bi_integrals_erf.irp.f`

    mo_two_e_integral_jj_from_ao(i,j) = J_ij mo_two_e_integrals_jj_exchange_from_ao(i,j) = J_ij mo_two_e_integrals_jj_anti_from_ao(i,j) = J_ij - K_ij


 

.. c:var:: mo_two_e_int_erf_jj_from_ao

    .. code:: text

        double precision, allocatable	:: mo_two_e_int_erf_jj_from_ao	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_exchange_from_ao	(mo_num,mo_num)
        double precision, allocatable	:: mo_two_e_int_erf_jj_anti_from_ao	(mo_num,mo_num)

    File: :file:`mo_bi_integrals_erf.irp.f`

    mo_two_e_integral_jj_from_ao(i,j) = J_ij mo_two_e_integrals_jj_exchange_from_ao(i,j) = J_ij mo_two_e_integrals_jj_anti_from_ao(i,j) = J_ij - K_ij


 

.. c:var:: mo_two_e_integrals_erf_in_map

    .. code:: text

        logical	:: mo_two_e_integrals_erf_in_map

    File: :file:`mo_bi_integrals_erf.irp.f`

    If True, the map of MO two-electron integrals is provided


 
 
Subroutines / functions 
----------------------- 
 


.. c:function:: add_integrals_to_map_erf

    .. code:: text

        subroutine add_integrals_to_map_erf(mask_ijkl)

    File: :file:`mo_bi_integrals_erf.irp.f`

    Adds integrals to tha MO map according to some bitmask


 


.. c:function:: clear_mo_erf_map

    .. code:: text

        subroutine clear_mo_erf_map

    File: :file:`mo_bi_integrals_erf.irp.f`

    Frees the memory of the MO map


 


.. c:function:: get_mo_erf_map_size

    .. code:: text

        integer*8 function get_mo_erf_map_size()

    File: :file:`map_integrals_erf.irp.f`

    Returns the number of elements in the |MO| map


 


.. c:function:: get_mo_two_e_integral_erf

    .. code:: text

        double precision function get_mo_two_e_integral_erf(i,j,k,l,map)

    File: :file:`map_integrals_erf.irp.f`

    Returns one integral  :math:`\langle ij|kl \rangle`  in the |MO| basis


 


.. c:function:: get_mo_two_e_integrals_erf

    .. code:: text

        subroutine get_mo_two_e_integrals_erf(j,k,l,sze,out_val,map)

    File: :file:`map_integrals_erf.irp.f`

    Returns multiple integrals  :math:`\langle ij|kl \rangle`  in the |MO| basis, all i for j,k,l fixed.


 


.. c:function:: get_mo_two_e_integrals_erf_coulomb_ii

    .. code:: text

        subroutine get_mo_two_e_integrals_erf_coulomb_ii(k,l,sze,out_val,map)

    File: :file:`map_integrals_erf.irp.f`

    Returns multiple integrals  :math:`\langle ki|li \rangle` 

    k(1)i(2) 1/r12 l(1)i(2) :: out_val(i1) for k,l fixed.


 


.. c:function:: get_mo_two_e_integrals_erf_exch_ii

    .. code:: text

        subroutine get_mo_two_e_integrals_erf_exch_ii(k,l,sze,out_val,map)

    File: :file:`map_integrals_erf.irp.f`

    Returns multiple integrals  :math:`\langle ki|il \rangle` 

     :math:`\int k(1)i(2) \frac{1}{r_{12}} i(1)l(2)`  :: out_val(i1) for k,l fixed.


 


.. c:function:: get_mo_two_e_integrals_erf_i1j1

    .. code:: text

        subroutine get_mo_two_e_integrals_erf_i1j1(k,l,sze,out_array,map)

    File: :file:`map_integrals_erf.irp.f`

    Returns multiple integrals  :math:`\langle ik|jl \rangle`  in the |MO| basis, all  :math:`\int i(1)j(1) \frac{\erf(\mu * r_{12})}{r_{12}} k(2)l(2)` i, j for k,l fixed.


 


.. c:function:: get_mo_two_e_integrals_erf_ij

    .. code:: text

        subroutine get_mo_two_e_integrals_erf_ij(k,l,sze,out_array,map)

    File: :file:`map_integrals_erf.irp.f`

    Returns multiple integrals  :math:`\langle ij|kl \rangle`  in the |MO| basis, all  :math:`\int i(1)j(2) \frac{1}{r_{12}} k(1)l(2)` i, j for k,l fixed.


 


.. c:function:: load_mo_integrals_erf

    .. code:: text

        integer function load_mo_integrals_erf(filename)

    File: :file:`map_integrals_erf.irp.f`

    Read from disk the |MO| erf integrals


 


.. c:function:: mo_two_e_integral_erf

    .. code:: text

        double precision function mo_two_e_integral_erf(i,j,k,l)

    File: :file:`map_integrals_erf.irp.f`

    Returns one integral  :math:`\langle ij|kl \rangle`  in the |MO| basis


 


.. c:function:: mo_two_e_integrals_erf_index

    .. code:: text

        subroutine mo_two_e_integrals_erf_index(i,j,k,l,i1)

    File: :file:`mo_bi_integrals_erf.irp.f`

    Computes an unique index for i,j,k,l integrals


 


.. c:function:: provide_all_mo_integrals_erf

    .. code:: text

        subroutine provide_all_mo_integrals_erf

    File: :file:`mo_bi_integrals_erf.irp.f`

    


 


.. c:function:: save_erf_two_e_integrals_mo

    .. code:: text

        subroutine save_erf_two_e_integrals_mo

    File: :file:`routines_save_integrals_erf.irp.f`

    


 


.. c:function:: save_erf_two_e_ints_mo_into_ints_mo

    .. code:: text

        subroutine save_erf_two_e_ints_mo_into_ints_mo

    File: :file:`routines_save_integrals_erf.irp.f`

    


