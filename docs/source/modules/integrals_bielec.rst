.. _integrals_bielec:

.. program:: integrals_bielec

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

.. option:: disk_access_ao_integrals

    Read/Write |AO| integrals from/to disk [ Write | Read | None ]

    Default: None

.. option:: ao_integrals_threshold

    If | (pq|rs) | < `ao_integrals_threshold` then (pq|rs) is zero

    Default: 1.e-15

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

.. option:: do_direct_integrals

    Compute integrals on the fly (very slow, only for debugging)

    Default: False


Providers
---------


.. c:var:: ao_bielec_integral_schwartz

    .. code:: text

        double precision, allocatable	:: ao_bielec_integral_schwartz	(ao_num,ao_num)

    File: :file:`ao_bi_integrals.irp.f`

    Needed to compute Schwartz inequalities




.. c:var:: ao_bielec_integrals_in_map

    .. code:: text

        logical	:: ao_bielec_integrals_in_map

    File: :file:`ao_bi_integrals.irp.f`

    Map of Atomic integrals i(r1) j(r2) 1/r12 k(r1) l(r2)




.. c:var:: ao_integrals_cache

    .. code:: text

        double precision, allocatable	:: ao_integrals_cache	(0:64*64*64*64)

    File: :file:`map_integrals.irp.f`

    Cache of AO integrals for fast access




.. c:var:: ao_integrals_cache_max

    .. code:: text

        integer	:: ao_integrals_cache_min
        integer	:: ao_integrals_cache_max

    File: :file:`map_integrals.irp.f`

    Min and max values of the AOs for which the integrals are in the cache




.. c:var:: ao_integrals_cache_min

    .. code:: text

        integer	:: ao_integrals_cache_min
        integer	:: ao_integrals_cache_max

    File: :file:`map_integrals.irp.f`

    Min and max values of the AOs for which the integrals are in the cache




.. c:var:: ao_integrals_map

    .. code:: text

        type(map_type)	:: ao_integrals_map

    File: :file:`map_integrals.irp.f`

    AO integrals




.. c:var:: big_array_coulomb_integrals

    .. code:: text

        double precision, allocatable	:: big_array_coulomb_integrals	(mo_tot_num,mo_tot_num,mo_tot_num)
        double precision, allocatable	:: big_array_exchange_integrals	(mo_tot_num,mo_tot_num,mo_tot_num)

    File: :file:`integrals_3_index.irp.f`

    




.. c:var:: big_array_exchange_integrals

    .. code:: text

        double precision, allocatable	:: big_array_coulomb_integrals	(mo_tot_num,mo_tot_num,mo_tot_num)
        double precision, allocatable	:: big_array_exchange_integrals	(mo_tot_num,mo_tot_num,mo_tot_num)

    File: :file:`integrals_3_index.irp.f`

    




.. c:var:: core_energy

    .. code:: text

        double precision	:: core_energy

    File: :file:`core_quantities.irp.f`

    




.. c:var:: core_fock_operator

    .. code:: text

        double precision, allocatable	:: core_fock_operator	(mo_tot_num,mo_tot_num)

    File: :file:`core_quantities.irp.f`

    this is the contribution to the Fock operator from the core electrons




.. c:var:: gauleg_t2

    .. code:: text

        double precision, allocatable	:: gauleg_t2	(n_pt_max_integrals,n_pt_max_integrals/2)
        double precision, allocatable	:: gauleg_w	(n_pt_max_integrals,n_pt_max_integrals/2)

    File: :file:`gauss_legendre.irp.f`

    t_w(i,1,k) = w(i) t_w(i,2,k) = t(i)




.. c:var:: gauleg_w

    .. code:: text

        double precision, allocatable	:: gauleg_t2	(n_pt_max_integrals,n_pt_max_integrals/2)
        double precision, allocatable	:: gauleg_w	(n_pt_max_integrals,n_pt_max_integrals/2)

    File: :file:`gauss_legendre.irp.f`

    t_w(i,1,k) = w(i) t_w(i,2,k) = t(i)




.. c:var:: general_primitive_integral

    .. code:: text

        double precision function general_primitive_integral(dim,            &
        P_new,P_center,fact_p,p,p_inv,iorder_p,                        &
        Q_new,Q_center,fact_q,q,q_inv,iorder_q)

    File: :file:`ao_bi_integrals.irp.f`

    Computes the integral <pq|rs> where p,q,r,s are Gaussian primitives




.. c:var:: i_x1_new

    .. code:: text

        recursive subroutine I_x1_new(a,c,B_10,B_01,B_00,res,n_pt)

    File: :file:`ao_bi_integrals.irp.f`

    recursive function involved in the bielectronic integral




.. c:var:: i_x1_pol_mult_a1

    .. code:: text

        recursive subroutine I_x1_pol_mult_a1(c,B_10,B_01,B_00,C_00,D_00,d,nd,n_pt_in)

    File: :file:`ao_bi_integrals.irp.f`

    recursive function involved in the bielectronic integral




.. c:var:: i_x1_pol_mult_a2

    .. code:: text

        recursive subroutine I_x1_pol_mult_a2(c,B_10,B_01,B_00,C_00,D_00,d,nd,n_pt_in)

    File: :file:`ao_bi_integrals.irp.f`

    recursive function involved in the bielectronic integral




.. c:var:: i_x1_pol_mult_recurs

    .. code:: text

        recursive subroutine I_x1_pol_mult_recurs(a,c,B_10,B_01,B_00,C_00,D_00,d,nd,n_pt_in)

    File: :file:`ao_bi_integrals.irp.f`

    recursive function involved in the bielectronic integral




.. c:var:: i_x2_new

    .. code:: text

        recursive subroutine I_x2_new(c,B_10,B_01,B_00,res,n_pt)

    File: :file:`ao_bi_integrals.irp.f`

    recursive function involved in the bielectronic integral




.. c:var:: i_x2_pol_mult

    .. code:: text

        recursive subroutine I_x2_pol_mult(c,B_10,B_01,B_00,C_00,D_00,d,nd,dim)

    File: :file:`ao_bi_integrals.irp.f`

    recursive function involved in the bielectronic integral




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




.. c:var:: read_ao_integrals

    .. code:: text

        logical	:: read_ao_integrals
        logical	:: read_mo_integrals
        logical	:: write_ao_integrals
        logical	:: write_mo_integrals

    File: :file:`read_write.irp.f`

    One level of abstraction for disk_access_ao_integrals and disk_access_mo_integrals




.. c:var:: read_mo_integrals

    .. code:: text

        logical	:: read_ao_integrals
        logical	:: read_mo_integrals
        logical	:: write_ao_integrals
        logical	:: write_mo_integrals

    File: :file:`read_write.irp.f`

    One level of abstraction for disk_access_ao_integrals and disk_access_mo_integrals




.. c:var:: write_ao_integrals

    .. code:: text

        logical	:: read_ao_integrals
        logical	:: read_mo_integrals
        logical	:: write_ao_integrals
        logical	:: write_mo_integrals

    File: :file:`read_write.irp.f`

    One level of abstraction for disk_access_ao_integrals and disk_access_mo_integrals




.. c:var:: write_mo_integrals

    .. code:: text

        logical	:: read_ao_integrals
        logical	:: read_mo_integrals
        logical	:: write_ao_integrals
        logical	:: write_mo_integrals

    File: :file:`read_write.irp.f`

    One level of abstraction for disk_access_ao_integrals and disk_access_mo_integrals




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





.. c:function:: ao_bielec_integral

    .. code:: text

        double precision function ao_bielec_integral(i,j,k,l)

    File: :file:`ao_bi_integrals.irp.f`

    integral of the AO basis <ik|jl> or (ij|kl) i(r1) j(r1) 1/r12 k(r2) l(r2)





.. c:function:: ao_bielec_integral_schwartz_accel

    .. code:: text

        double precision function ao_bielec_integral_schwartz_accel(i,j,k,l)

    File: :file:`ao_bi_integrals.irp.f`

    integral of the AO basis <ik|jl> or (ij|kl) i(r1) j(r1) 1/r12 k(r2) l(r2)





.. c:function:: ao_bielec_integrals_in_map_collector

    .. code:: text

        subroutine ao_bielec_integrals_in_map_collector(zmq_socket_pull)

    File: :file:`ao_bielec_integrals_in_map_slave.irp.f`

    Collects results from the AO integral calculation





.. c:function:: ao_bielec_integrals_in_map_slave

    .. code:: text

        subroutine ao_bielec_integrals_in_map_slave(thread,iproc)

    File: :file:`ao_bielec_integrals_in_map_slave.irp.f`

    Computes a buffer of integrals





.. c:function:: ao_bielec_integrals_in_map_slave_inproc

    .. code:: text

        subroutine ao_bielec_integrals_in_map_slave_inproc(i)

    File: :file:`ao_bielec_integrals_in_map_slave.irp.f`

    Computes a buffer of integrals. i is the ID of the current thread.





.. c:function:: ao_bielec_integrals_in_map_slave_tcp

    .. code:: text

        subroutine ao_bielec_integrals_in_map_slave_tcp(i)

    File: :file:`ao_bielec_integrals_in_map_slave.irp.f`

    Computes a buffer of integrals. i is the ID of the current thread.





.. c:function:: ao_l4

    .. code:: text

        integer function ao_l4(i,j,k,l)

    File: :file:`ao_bi_integrals.irp.f`

    Computes the product of l values of i,j,k,and l





.. c:function:: bielec_integrals_index

    .. code:: text

        subroutine bielec_integrals_index(i,j,k,l,i1)

    File: :file:`map_integrals.irp.f`

    





.. c:function:: bielec_integrals_index_reverse

    .. code:: text

        subroutine bielec_integrals_index_reverse(i,j,k,l,i1)

    File: :file:`map_integrals.irp.f`

    





.. c:function:: clear_ao_map

    .. code:: text

        subroutine clear_ao_map

    File: :file:`map_integrals.irp.f`

    Frees the memory of the AO map





.. c:function:: clear_mo_map

    .. code:: text

        subroutine clear_mo_map

    File: :file:`mo_bi_integrals.irp.f`

    Frees the memory of the MO map





.. c:function:: compute_ao_bielec_integrals

    .. code:: text

        subroutine compute_ao_bielec_integrals(j,k,l,sze,buffer_value)

    File: :file:`ao_bi_integrals.irp.f`

    Compute AO 1/r12 integrals for all i and fixed j,k,l





.. c:function:: compute_ao_integrals_jl

    .. code:: text

        subroutine compute_ao_integrals_jl(j,l,n_integrals,buffer_i,buffer_value)

    File: :file:`ao_bi_integrals.irp.f`

    Parallel client for AO integrals





.. c:function:: dump_ao_integrals

    .. code:: text

        subroutine dump_ao_integrals(filename)

    File: :file:`map_integrals.irp.f_template_694`

    Save to disk the $ao integrals





.. c:function:: dump_mo_integrals

    .. code:: text

        subroutine dump_mo_integrals(filename)

    File: :file:`map_integrals.irp.f_template_694`

    Save to disk the $ao integrals





.. c:function:: eri

    .. code:: text

        double precision function ERI(alpha,beta,delta,gama,a_x,b_x,c_x,d_x,a_y,b_y,c_y,d_y,a_z,b_z,c_z,d_z)

    File: :file:`ao_bi_integrals.irp.f`

    ATOMIC PRIMTIVE bielectronic integral between the 4 primitives :: primitive_1 = x1**(a_x) y1**(a_y) z1**(a_z) exp(-alpha * r1**2) primitive_2 = x1**(b_x) y1**(b_y) z1**(b_z) exp(- beta * r1**2) primitive_3 = x2**(c_x) y2**(c_y) z2**(c_z) exp(-delta * r2**2) primitive_4 = x2**(d_x) y2**(d_y) z2**(d_z) exp(- gama * r2**2)





.. c:function:: gauleg

    .. code:: text

        subroutine gauleg(x1,x2,x,w,n)

    File: :file:`gauss_legendre.irp.f`

    Gauss-Legendre





.. c:function:: get_ao_bielec_integral

    .. code:: text

        double precision function get_ao_bielec_integral(i,j,k,l,map) result(result)

    File: :file:`map_integrals.irp.f`

    Gets one AO bi-electronic integral from the AO map





.. c:function:: get_ao_bielec_integrals

    .. code:: text

        subroutine get_ao_bielec_integrals(j,k,l,sze,out_val)

    File: :file:`map_integrals.irp.f`

    Gets multiple AO bi-electronic integral from the AO map . All i are retrieved for j,k,l fixed.





.. c:function:: get_ao_bielec_integrals_non_zero

    .. code:: text

        subroutine get_ao_bielec_integrals_non_zero(j,k,l,sze,out_val,out_val_index,non_zero_int)

    File: :file:`map_integrals.irp.f`

    Gets multiple AO bi-electronic integral from the AO map . All non-zero i are retrieved for j,k,l fixed.





.. c:function:: get_ao_map_size

    .. code:: text

        function get_ao_map_size()

    File: :file:`map_integrals.irp.f`

    Returns the number of elements in the AO map





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





.. c:function:: give_polynom_mult_center_x

    .. code:: text

        subroutine give_polynom_mult_center_x(P_center,Q_center,a_x,d_x,p,q,n_pt_in,pq_inv,pq_inv_2,p10_1,p01_1,p10_2,p01_2,d,n_pt_out)

    File: :file:`ao_bi_integrals.irp.f`

    subroutine that returns the explicit polynom in term of the "t" variable of the following polynomw : I_x1(a_x, d_x,p,q) * I_x1(a_y, d_y,p,q) * I_x1(a_z, d_z,p,q)





.. c:function:: i_x1_pol_mult

    .. code:: text

        subroutine I_x1_pol_mult(a,c,B_10,B_01,B_00,C_00,D_00,d,nd,n_pt_in)

    File: :file:`ao_bi_integrals.irp.f`

    recursive function involved in the bielectronic integral





.. c:function:: insert_into_ao_integrals_map

    .. code:: text

        subroutine insert_into_ao_integrals_map(n_integrals,buffer_i, buffer_values)

    File: :file:`map_integrals.irp.f`

    Create new entry into AO map





.. c:function:: integrale_new

    .. code:: text

        subroutine integrale_new(I_f,a_x,b_x,c_x,d_x,a_y,b_y,c_y,d_y,a_z,b_z,c_z,d_z,p,q,n_pt)

    File: :file:`ao_bi_integrals.irp.f`

    calculate the integral of the polynom :: I_x1(a_x+b_x, c_x+d_x,p,q) * I_x1(a_y+b_y, c_y+d_y,p,q) * I_x1(a_z+b_z, c_z+d_z,p,q) between ( 0 ; 1)





.. c:function:: load_ao_integrals

    .. code:: text

        integer function load_ao_integrals(filename)

    File: :file:`map_integrals.irp.f_template_694`

    Read from disk the $ao integrals





.. c:function:: load_mo_integrals

    .. code:: text

        integer function load_mo_integrals(filename)

    File: :file:`map_integrals.irp.f_template_694`

    Read from disk the $ao integrals





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





.. c:function:: n_pt_sup

    .. code:: text

        integer function n_pt_sup(a_x,b_x,c_x,d_x,a_y,b_y,c_y,d_y,a_z,b_z,c_z,d_z)

    File: :file:`ao_bi_integrals.irp.f`

    Returns the upper boundary of the degree of the polynomial involved in the bielctronic integral : Ix(a_x,b_x,c_x,d_x) * Iy(a_y,b_y,c_y,d_y) * Iz(a_z,b_z,c_z,d_z)





.. c:function:: push_integrals

    .. code:: text

        subroutine push_integrals(zmq_socket_push, n_integrals, buffer_i, buffer_value, task_id)

    File: :file:`ao_bielec_integrals_in_map_slave.irp.f`

    Push integrals in the push socket


