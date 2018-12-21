.. _mrcc:

.. program:: mrcc

.. default-role:: option

====
MRCC
====

Multi-Reference Coupled Cluster module:

#. A simple approach to the state-specific MR-CC using the intermediate Hamiltonian formalism 
   Emmanuel Giner , Grégoire David , Anthony Scemama and Jean Paul Malrieu (2016), in: J. Chem. Phys., 144:6(064101)

#. Alternative definition of excitation amplitudes in multi-reference state-specific coupled cluster 
   Yann Garniron , Emmanuel Giner , Jean Paul Malrieu and Anthony Scemama (2017), in: The Journal of Chemical Physics, 146:15(154107)

Using this module requires to have a selected |CAS-SD| wave function.






EZFIO parameters
----------------

.. option:: lambda_type

    Type of amplitudes used. 0 is defined in ref 2, 1 is defined in ref 1.

    Default: 0

.. option:: energy

    |MRCC| energy


.. option:: energy_pt2

    Selected |MRCC| energy, with |PT2| contribution to estimate the complete |MRCC| energy


.. option:: perturbative_triples

    If `True`, compute the perturbative contribution of the Triples

    Default: true


Providers
---------


.. c:var:: dia_hla_

    .. code:: text

        double precision, allocatable	:: hij_cache_	(N_det,Nproc)
        double precision, allocatable	:: sij_cache_	(N_det,Nproc)
        double precision, allocatable	:: dia_hla_	(N_states,N_det,Nproc)
        double precision, allocatable	:: dia_sla_	(N_states,N_det,Nproc)
        integer(bit_kind), allocatable	:: sorted_mini	(N_int,2,N_det,Nproc)
        integer, allocatable	:: excs_	(0:2,2,2,N_det,Nproc)
        integer, allocatable	:: idx_buf	(N_det,Nproc)
        double precision, allocatable	:: phases_	(N_det,Nproc)

    File: :file:`mrcc_routines.irp.f`

    temporay arrays for dress_with_alpha_buffer. Avoids reallocation.




.. c:var:: dia_sla_

    .. code:: text

        double precision, allocatable	:: hij_cache_	(N_det,Nproc)
        double precision, allocatable	:: sij_cache_	(N_det,Nproc)
        double precision, allocatable	:: dia_hla_	(N_states,N_det,Nproc)
        double precision, allocatable	:: dia_sla_	(N_states,N_det,Nproc)
        integer(bit_kind), allocatable	:: sorted_mini	(N_int,2,N_det,Nproc)
        integer, allocatable	:: excs_	(0:2,2,2,N_det,Nproc)
        integer, allocatable	:: idx_buf	(N_det,Nproc)
        double precision, allocatable	:: phases_	(N_det,Nproc)

    File: :file:`mrcc_routines.irp.f`

    temporay arrays for dress_with_alpha_buffer. Avoids reallocation.




.. c:var:: excs_

    .. code:: text

        double precision, allocatable	:: hij_cache_	(N_det,Nproc)
        double precision, allocatable	:: sij_cache_	(N_det,Nproc)
        double precision, allocatable	:: dia_hla_	(N_states,N_det,Nproc)
        double precision, allocatable	:: dia_sla_	(N_states,N_det,Nproc)
        integer(bit_kind), allocatable	:: sorted_mini	(N_int,2,N_det,Nproc)
        integer, allocatable	:: excs_	(0:2,2,2,N_det,Nproc)
        integer, allocatable	:: idx_buf	(N_det,Nproc)
        double precision, allocatable	:: phases_	(N_det,Nproc)

    File: :file:`mrcc_routines.irp.f`

    temporay arrays for dress_with_alpha_buffer. Avoids reallocation.




.. c:var:: hij_cache_

    .. code:: text

        double precision, allocatable	:: hij_cache_	(N_det,Nproc)
        double precision, allocatable	:: sij_cache_	(N_det,Nproc)
        double precision, allocatable	:: dia_hla_	(N_states,N_det,Nproc)
        double precision, allocatable	:: dia_sla_	(N_states,N_det,Nproc)
        integer(bit_kind), allocatable	:: sorted_mini	(N_int,2,N_det,Nproc)
        integer, allocatable	:: excs_	(0:2,2,2,N_det,Nproc)
        integer, allocatable	:: idx_buf	(N_det,Nproc)
        double precision, allocatable	:: phases_	(N_det,Nproc)

    File: :file:`mrcc_routines.irp.f`

    temporay arrays for dress_with_alpha_buffer. Avoids reallocation.




.. c:var:: idx_buf

    .. code:: text

        double precision, allocatable	:: hij_cache_	(N_det,Nproc)
        double precision, allocatable	:: sij_cache_	(N_det,Nproc)
        double precision, allocatable	:: dia_hla_	(N_states,N_det,Nproc)
        double precision, allocatable	:: dia_sla_	(N_states,N_det,Nproc)
        integer(bit_kind), allocatable	:: sorted_mini	(N_int,2,N_det,Nproc)
        integer, allocatable	:: excs_	(0:2,2,2,N_det,Nproc)
        integer, allocatable	:: idx_buf	(N_det,Nproc)
        double precision, allocatable	:: phases_	(N_det,Nproc)

    File: :file:`mrcc_routines.irp.f`

    temporay arrays for dress_with_alpha_buffer. Avoids reallocation.




.. c:var:: phases_

    .. code:: text

        double precision, allocatable	:: hij_cache_	(N_det,Nproc)
        double precision, allocatable	:: sij_cache_	(N_det,Nproc)
        double precision, allocatable	:: dia_hla_	(N_states,N_det,Nproc)
        double precision, allocatable	:: dia_sla_	(N_states,N_det,Nproc)
        integer(bit_kind), allocatable	:: sorted_mini	(N_int,2,N_det,Nproc)
        integer, allocatable	:: excs_	(0:2,2,2,N_det,Nproc)
        integer, allocatable	:: idx_buf	(N_det,Nproc)
        double precision, allocatable	:: phases_	(N_det,Nproc)

    File: :file:`mrcc_routines.irp.f`

    temporay arrays for dress_with_alpha_buffer. Avoids reallocation.




.. c:var:: psi_ref_detsorted

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref_detsorted	(N_int,2,N_det_ref)
        integer, allocatable	:: psi_ref_detsorted_idx	(N_det_ref)

    File: :file:`mrcc_routines.irp.f`

    




.. c:var:: psi_ref_detsorted_idx

    .. code:: text

        integer(bit_kind), allocatable	:: psi_ref_detsorted	(N_int,2,N_det_ref)
        integer, allocatable	:: psi_ref_detsorted_idx	(N_det_ref)

    File: :file:`mrcc_routines.irp.f`

    




.. c:var:: sij_cache_

    .. code:: text

        double precision, allocatable	:: hij_cache_	(N_det,Nproc)
        double precision, allocatable	:: sij_cache_	(N_det,Nproc)
        double precision, allocatable	:: dia_hla_	(N_states,N_det,Nproc)
        double precision, allocatable	:: dia_sla_	(N_states,N_det,Nproc)
        integer(bit_kind), allocatable	:: sorted_mini	(N_int,2,N_det,Nproc)
        integer, allocatable	:: excs_	(0:2,2,2,N_det,Nproc)
        integer, allocatable	:: idx_buf	(N_det,Nproc)
        double precision, allocatable	:: phases_	(N_det,Nproc)

    File: :file:`mrcc_routines.irp.f`

    temporay arrays for dress_with_alpha_buffer. Avoids reallocation.




.. c:var:: sorted_mini

    .. code:: text

        double precision, allocatable	:: hij_cache_	(N_det,Nproc)
        double precision, allocatable	:: sij_cache_	(N_det,Nproc)
        double precision, allocatable	:: dia_hla_	(N_states,N_det,Nproc)
        double precision, allocatable	:: dia_sla_	(N_states,N_det,Nproc)
        integer(bit_kind), allocatable	:: sorted_mini	(N_int,2,N_det,Nproc)
        integer, allocatable	:: excs_	(0:2,2,2,N_det,Nproc)
        integer, allocatable	:: idx_buf	(N_det,Nproc)
        double precision, allocatable	:: phases_	(N_det,Nproc)

    File: :file:`mrcc_routines.irp.f`

    temporay arrays for dress_with_alpha_buffer. Avoids reallocation.




Subroutines / functions
-----------------------



.. c:function:: dress_with_alpha_buffer

    .. code:: text

        subroutine dress_with_alpha_buffer(Nstates, Ndet,Nint,delta_ij_loc, i_gen, minilist, det_minilist, n_minilist, alpha, iproc)

    File: :file:`mrcc_routines.irp.f`

    delta_ij_loc(:,:,1) : dressing column for H delta_ij_loc(:,:,2) : dressing column for S2 i_gen : generator index in psi_det_generators minilist : indices of determinants connected to alpha ( in psi_det ) n_minilist : size of minilist alpha : alpha determinant





.. c:function:: dress_with_alpha_buffer_neu

    .. code:: text

        subroutine dress_with_alpha_buffer_neu(Nstates,Ndet,Nint,delta_ij_loc, i_gen, minilist, det_minilist, n_minilist, alpha, iproc)

    File: :file:`mrcc_routines.irp.f`

    delta_ij_loc(:,:,1) : dressing column for H delta_ij_loc(:,:,2) : dressing column for S2 i_gen : generator index in psi_det_generators minilist : indices of determinants connected to alpha ( in psi_det ) n_minilist : size of minilist alpha : alpha determinant





.. c:function:: generator_start

    .. code:: text

        subroutine generator_start(i_gen, iproc, interesting)

    File: :file:`mrcc_routines.irp.f`

    





.. c:function:: mrcc

    .. code:: text

        subroutine mrcc

    File: :file:`mrcc.irp.f`

    Multi-reference Coulped Cluster





.. c:function:: provide_all

    .. code:: text

        subroutine provide_all

    File: :file:`mrcc_slave.irp.f`

    





.. c:function:: run_pt2

    .. code:: text

        subroutine run_pt2(N_st,energy)

    File: :file:`mrcc.irp.f`

    





.. c:function:: run_w

    .. code:: text

        subroutine run_w

    File: :file:`mrcc_slave.irp.f`

    





.. c:function:: shifted_bk_slave

    .. code:: text

        subroutine shifted_bk_slave

    File: :file:`mrcc_slave.irp.f`

    Helper program to compute the dressing in distributed mode.


