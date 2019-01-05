.. _ao_two_e_erf_ints:

.. program:: ao_two_e_erf_ints

.. default-role:: option

======================
ao_two_e_erf_ints
======================

Here, all two-electron integrals (:math:`erf(\mu r_{12})/r_{12}`) are computed.
As they have 4 indices and many are zero, they are stored in a map, as defined
in :file:`utils/map_module.f90`.

The main parameter of this module is :option:`ao_two_e_erf_ints mu_erf` which is the range-separation parameter. 

To fetch an |AO| integral, use the
`get_ao_bielec_integral_erf(i,j,k,l,ao_integrals_erf_map)` function. 


The conventions are:
* For |AO| integrals : (ij|kl) = (11|22) = <ik|jl> = <12|12>






EZFIO parameters
----------------

.. option:: io_ao_two_e_integrals_erf

    Read/Write |AO| integrals with the long range interaction from/to disk [ Write | Read | None ]

    Default: None

.. option:: mu_erf

    cutting of the interaction in the range separated model

    Default: 0.5


Providers
---------


.. c:var:: ao_bielec_integral_erf_schwartz

    .. code:: text

        double precision, allocatable	:: ao_bielec_integral_erf_schwartz	(ao_num,ao_num)

    File: :file:`providers_ao_erf.irp.f`

    Needed to compute Schwartz inequalities




.. c:var:: ao_bielec_integrals_erf_in_map

    .. code:: text

        logical	:: ao_bielec_integrals_erf_in_map

    File: :file:`providers_ao_erf.irp.f`

    Map of Atomic integrals i(r1) j(r2) 1/r12 k(r1) l(r2)




.. c:var:: ao_integrals_erf_cache

    .. code:: text

        double precision, allocatable	:: ao_integrals_erf_cache	(0:64*64*64*64)

    File: :file:`map_integrals_erf.irp.f`

    Cache of |AO| integrals for fast access




.. c:var:: ao_integrals_erf_cache_max

    .. code:: text

        integer	:: ao_integrals_erf_cache_min
        integer	:: ao_integrals_erf_cache_max

    File: :file:`map_integrals_erf.irp.f`

    Min and max values of the AOs for which the integrals are in the cache




.. c:var:: ao_integrals_erf_cache_min

    .. code:: text

        integer	:: ao_integrals_erf_cache_min
        integer	:: ao_integrals_erf_cache_max

    File: :file:`map_integrals_erf.irp.f`

    Min and max values of the AOs for which the integrals are in the cache




.. c:var:: ao_integrals_erf_map

    .. code:: text

        type(map_type)	:: ao_integrals_erf_map

    File: :file:`map_integrals_erf.irp.f`

    |AO| integrals




.. c:var:: general_primitive_integral_erf

    .. code:: text

        double precision function general_primitive_integral_erf(dim,            &
              P_new,P_center,fact_p,p,p_inv,iorder_p,                        &
              Q_new,Q_center,fact_q,q,q_inv,iorder_q)

    File: :file:`two_e_integrals_erf.irp.f`

    Computes the integral <pq|rs> where p,q,r,s are Gaussian primitives




Subroutines / functions
-----------------------



.. c:function:: ao_bielec_integral_erf

    .. code:: text

        double precision function ao_bielec_integral_erf(i,j,k,l)

    File: :file:`two_e_integrals_erf.irp.f`

    integral of the AO basis <ik|jl> or (ij|kl) i(r1) j(r1) 1/r12 k(r2) l(r2)





.. c:function:: ao_bielec_integral_schwartz_accel_erf

    .. code:: text

        double precision function ao_bielec_integral_schwartz_accel_erf(i,j,k,l)

    File: :file:`two_e_integrals_erf.irp.f`

    integral of the AO basis <ik|jl> or (ij|kl) i(r1) j(r1) 1/r12 k(r2) l(r2)





.. c:function:: ao_bielec_integrals_erf_in_map_collector

    .. code:: text

        subroutine ao_bielec_integrals_erf_in_map_collector(zmq_socket_pull)

    File: :file:`integrals_erf_in_map_slave.irp.f`

    Collects results from the AO integral calculation





.. c:function:: ao_bielec_integrals_erf_in_map_slave

    .. code:: text

        subroutine ao_bielec_integrals_erf_in_map_slave(thread,iproc)

    File: :file:`integrals_erf_in_map_slave.irp.f`

    Computes a buffer of integrals





.. c:function:: ao_bielec_integrals_erf_in_map_slave_inproc

    .. code:: text

        subroutine ao_bielec_integrals_erf_in_map_slave_inproc(i)

    File: :file:`integrals_erf_in_map_slave.irp.f`

    Computes a buffer of integrals. i is the ID of the current thread.





.. c:function:: ao_bielec_integrals_erf_in_map_slave_tcp

    .. code:: text

        subroutine ao_bielec_integrals_erf_in_map_slave_tcp(i)

    File: :file:`integrals_erf_in_map_slave.irp.f`

    Computes a buffer of integrals. i is the ID of the current thread.





.. c:function:: clear_ao_erf_map

    .. code:: text

        subroutine clear_ao_erf_map

    File: :file:`map_integrals_erf.irp.f`

    Frees the memory of the |AO| map





.. c:function:: compute_ao_bielec_integrals_erf

    .. code:: text

        subroutine compute_ao_bielec_integrals_erf(j,k,l,sze,buffer_value)

    File: :file:`two_e_integrals_erf.irp.f`

    Compute AO 1/r12 integrals for all i and fixed j,k,l





.. c:function:: compute_ao_integrals_erf_jl

    .. code:: text

        subroutine compute_ao_integrals_erf_jl(j,l,n_integrals,buffer_i,buffer_value)

    File: :file:`two_e_integrals_erf.irp.f`

    Parallel client for AO integrals





.. c:function:: dump_ao_integrals_erf

    .. code:: text

        subroutine dump_ao_integrals_erf(filename)

    File: :file:`map_integrals_erf.irp.f`

    Save to disk the |AO| erf integrals





.. c:function:: eri_erf

    .. code:: text

        double precision function ERI_erf(alpha,beta,delta,gama,a_x,b_x,c_x,d_x,a_y,b_y,c_y,d_y,a_z,b_z,c_z,d_z)

    File: :file:`two_e_integrals_erf.irp.f`

    ATOMIC PRIMTIVE bielectronic integral between the 4 primitives :: primitive_1 = x1**(a_x) y1**(a_y) z1**(a_z) exp(-alpha * r1**2) primitive_2 = x1**(b_x) y1**(b_y) z1**(b_z) exp(- beta * r1**2) primitive_3 = x2**(c_x) y2**(c_y) z2**(c_z) exp(-delta * r2**2) primitive_4 = x2**(d_x) y2**(d_y) z2**(d_z) exp(- gama * r2**2)





.. c:function:: get_ao_bielec_integral_erf

    .. code:: text

        double precision function get_ao_bielec_integral_erf(i,j,k,l,map) result(result)

    File: :file:`map_integrals_erf.irp.f`

    Gets one |AO| two-electron integral from the |AO| map





.. c:function:: get_ao_bielec_integrals_erf

    .. code:: text

        subroutine get_ao_bielec_integrals_erf(j,k,l,sze,out_val)

    File: :file:`map_integrals_erf.irp.f`

    Gets multiple |AO| two-electron integral from the |AO| map . All i are retrieved for j,k,l fixed.





.. c:function:: get_ao_bielec_integrals_erf_non_zero

    .. code:: text

        subroutine get_ao_bielec_integrals_erf_non_zero(j,k,l,sze,out_val,out_val_index,non_zero_int)

    File: :file:`map_integrals_erf.irp.f`

    Gets multiple |AO| two-electron integrals from the |AO| map . All non-zero i are retrieved for j,k,l fixed.





.. c:function:: get_ao_erf_map_size

    .. code:: text

        function get_ao_erf_map_size()

    File: :file:`map_integrals_erf.irp.f`

    Returns the number of elements in the |AO| map





.. c:function:: insert_into_ao_integrals_erf_map

    .. code:: text

        subroutine insert_into_ao_integrals_erf_map(n_integrals,buffer_i, buffer_values)

    File: :file:`map_integrals_erf.irp.f`

    Create new entry into |AO| map





.. c:function:: integrale_new_erf

    .. code:: text

        subroutine integrale_new_erf(I_f,a_x,b_x,c_x,d_x,a_y,b_y,c_y,d_y,a_z,b_z,c_z,d_z,p,q,n_pt)

    File: :file:`two_e_integrals_erf.irp.f`

    calculate the integral of the polynom :: I_x1(a_x+b_x, c_x+d_x,p,q) * I_x1(a_y+b_y, c_y+d_y,p,q) * I_x1(a_z+b_z, c_z+d_z,p,q) between ( 0 ; 1)





.. c:function:: load_ao_integrals_erf

    .. code:: text

        integer function load_ao_integrals_erf(filename)

    File: :file:`map_integrals_erf.irp.f`

    Read from disk the |AO| erf integrals





.. c:function:: save_erf_bi_elec_integrals_ao

    .. code:: text

        subroutine save_erf_bi_elec_integrals_ao

    File: :file:`routines_save_integrals_erf.irp.f`

    





.. c:function:: save_erf_bielec_ints_ao_into_ints_ao

    .. code:: text

        subroutine save_erf_bielec_ints_ao_into_ints_ao

    File: :file:`routines_save_integrals_erf.irp.f`

    


