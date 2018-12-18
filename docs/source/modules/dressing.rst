.. _dressing:

.. program:: dressing

.. default-role:: option

=========
dress_zmq
=========

Module to facilitate the construction of modules using dressed Hamiltonians, parallelized
with |ZeroMQ|.




EZFIO parameters
----------------

.. option:: thresh_dressed_ci

    Threshold on the convergence of the dressed |CI| energy

    Default: 1.e-5

.. option:: n_it_max_dressed_ci

    Maximum number of dressed |CI| iterations

    Default: 10

.. option:: dress_relative_error

    Stop stochastic dressing when the relative error is smaller than :option:`perturbation PT2_relative_error`

    Default: 0.001


Providers
---------


.. c:var:: delta_ij

    .. code:: text

        double precision, allocatable	:: delta_ij	(N_states,N_det,2)

    File: :file:`dressing.irp.f`

    




.. c:var:: delta_ij_tmp

    .. code:: text

        double precision, allocatable	:: delta_ij_tmp	(N_states,N_det_delta_ij,2)

    File: :file:`dressing.irp.f`

    




.. c:var:: dress_dot_f

    .. code:: text

        integer, allocatable	:: dress_dot_f	(dress_N_cp)
        integer, allocatable	:: dress_p	(N_det_generators)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_dot_n_0

    .. code:: text

        double precision, allocatable	:: dress_e	(N_det_generators,dress_N_cp)
        integer, allocatable	:: dress_dot_t	(0:dress_N_cp)
        integer, allocatable	:: dress_dot_n_0	(0:dress_N_cp)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_dot_t

    .. code:: text

        double precision, allocatable	:: dress_e	(N_det_generators,dress_N_cp)
        integer, allocatable	:: dress_dot_t	(0:dress_N_cp)
        integer, allocatable	:: dress_dot_n_0	(0:dress_N_cp)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_e

    .. code:: text

        double precision, allocatable	:: dress_e	(N_det_generators,dress_N_cp)
        integer, allocatable	:: dress_dot_t	(0:dress_N_cp)
        integer, allocatable	:: dress_dot_n_0	(0:dress_N_cp)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_e0_denominator

    .. code:: text

        double precision, allocatable	:: dress_e0_denominator	(N_states)

    File: :file:`energy.irp.f`

    E0 in the denominator of the dress




.. c:var:: dress_m_m

    .. code:: text

        integer, allocatable	:: dress_m_m	(dress_N_cp_max)
        integer, allocatable	:: pt2_j_	(N_det_generators)
        double precision, allocatable	:: pt2_u	(N_det_generators)
        integer, allocatable	:: dress_r1_	(0:N_det_generators)
        double precision, allocatable	:: dress_m_mi	(dress_N_cp_max,N_det_generators+1)
        integer, allocatable	:: dress_t	(N_det_generators)
        integer	:: dress_n_cp

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_m_mi

    .. code:: text

        integer, allocatable	:: dress_m_m	(dress_N_cp_max)
        integer, allocatable	:: pt2_j_	(N_det_generators)
        double precision, allocatable	:: pt2_u	(N_det_generators)
        integer, allocatable	:: dress_r1_	(0:N_det_generators)
        double precision, allocatable	:: dress_m_mi	(dress_N_cp_max,N_det_generators+1)
        integer, allocatable	:: dress_t	(N_det_generators)
        integer	:: dress_n_cp

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_n_cp

    .. code:: text

        integer, allocatable	:: dress_m_m	(dress_N_cp_max)
        integer, allocatable	:: pt2_j_	(N_det_generators)
        double precision, allocatable	:: pt2_u	(N_det_generators)
        integer, allocatable	:: dress_r1_	(0:N_det_generators)
        double precision, allocatable	:: dress_m_mi	(dress_N_cp_max,N_det_generators+1)
        integer, allocatable	:: dress_t	(N_det_generators)
        integer	:: dress_n_cp

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_n_cp_max

    .. code:: text

        integer	:: dress_n_cp_max

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_p

    .. code:: text

        integer, allocatable	:: dress_dot_f	(dress_N_cp)
        integer, allocatable	:: dress_p	(N_det_generators)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_r1

    .. code:: text

        integer, allocatable	:: pt2_j	(N_det_generators)
        integer, allocatable	:: dress_r1	(0:N_det_generators)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_r1_

    .. code:: text

        integer, allocatable	:: dress_m_m	(dress_N_cp_max)
        integer, allocatable	:: pt2_j_	(N_det_generators)
        double precision, allocatable	:: pt2_u	(N_det_generators)
        integer, allocatable	:: dress_r1_	(0:N_det_generators)
        double precision, allocatable	:: dress_m_mi	(dress_N_cp_max,N_det_generators+1)
        integer, allocatable	:: dress_t	(N_det_generators)
        integer	:: dress_n_cp

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: dress_stoch_istate

    .. code:: text

        integer	:: dress_stoch_istate

    File: :file:`dress_stoch_routines.irp.f`

    State for stochatsic dressing




.. c:var:: dress_t

    .. code:: text

        integer, allocatable	:: dress_m_m	(dress_N_cp_max)
        integer, allocatable	:: pt2_j_	(N_det_generators)
        double precision, allocatable	:: pt2_u	(N_det_generators)
        integer, allocatable	:: dress_r1_	(0:N_det_generators)
        double precision, allocatable	:: dress_m_mi	(dress_N_cp_max,N_det_generators+1)
        integer, allocatable	:: dress_t	(N_det_generators)
        integer	:: dress_n_cp

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: initialize_dress_e0_denominator

    .. code:: text

        logical	:: initialize_dress_e0_denominator

    File: :file:`energy.irp.f`

    If true, initialize dress_E0_denominator




.. c:var:: n_det_delta_ij

    .. code:: text

        integer	:: n_det_delta_ij

    File: :file:`dressing.irp.f`

    




.. c:var:: psi_from_sorted_gen

    .. code:: text

        integer, allocatable	:: psi_from_sorted_gen	(N_det)

    File: :file:`alpha_factory.irp.f`

    




.. c:var:: pt2_cw

    .. code:: text

        double precision, allocatable	:: pt2_w	(N_det_generators)
        double precision, allocatable	:: pt2_cw	(0:N_det_generators)
        double precision	:: pt2_w_t
        double precision	:: pt2_u_0
        integer, allocatable	:: pt2_n_0	(pt2_N_teeth+1)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_f

    .. code:: text

        integer	:: pt2_n_teeth
        integer	:: pt2_mindetinfirstteeth
        integer	:: pt2_n_tasks_max
        integer, allocatable	:: pt2_f	(N_det_generators)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_j

    .. code:: text

        integer, allocatable	:: pt2_j	(N_det_generators)
        integer, allocatable	:: dress_r1	(0:N_det_generators)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_j_

    .. code:: text

        integer, allocatable	:: dress_m_m	(dress_N_cp_max)
        integer, allocatable	:: pt2_j_	(N_det_generators)
        double precision, allocatable	:: pt2_u	(N_det_generators)
        integer, allocatable	:: dress_r1_	(0:N_det_generators)
        double precision, allocatable	:: dress_m_mi	(dress_N_cp_max,N_det_generators+1)
        integer, allocatable	:: dress_t	(N_det_generators)
        integer	:: dress_n_cp

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_mindetinfirstteeth

    .. code:: text

        integer	:: pt2_n_teeth
        integer	:: pt2_mindetinfirstteeth
        integer	:: pt2_n_tasks_max
        integer, allocatable	:: pt2_f	(N_det_generators)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_n_0

    .. code:: text

        double precision, allocatable	:: pt2_w	(N_det_generators)
        double precision, allocatable	:: pt2_cw	(0:N_det_generators)
        double precision	:: pt2_w_t
        double precision	:: pt2_u_0
        integer, allocatable	:: pt2_n_0	(pt2_N_teeth+1)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_n_tasks_max

    .. code:: text

        integer	:: pt2_n_teeth
        integer	:: pt2_mindetinfirstteeth
        integer	:: pt2_n_tasks_max
        integer, allocatable	:: pt2_f	(N_det_generators)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_n_teeth

    .. code:: text

        integer	:: pt2_n_teeth
        integer	:: pt2_mindetinfirstteeth
        integer	:: pt2_n_tasks_max
        integer, allocatable	:: pt2_f	(N_det_generators)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_u

    .. code:: text

        integer, allocatable	:: dress_m_m	(dress_N_cp_max)
        integer, allocatable	:: pt2_j_	(N_det_generators)
        double precision, allocatable	:: pt2_u	(N_det_generators)
        integer, allocatable	:: dress_r1_	(0:N_det_generators)
        double precision, allocatable	:: dress_m_mi	(dress_N_cp_max,N_det_generators+1)
        integer, allocatable	:: dress_t	(N_det_generators)
        integer	:: dress_n_cp

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_u_0

    .. code:: text

        double precision, allocatable	:: pt2_w	(N_det_generators)
        double precision, allocatable	:: pt2_cw	(0:N_det_generators)
        double precision	:: pt2_w_t
        double precision	:: pt2_u_0
        integer, allocatable	:: pt2_n_0	(pt2_N_teeth+1)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_w

    .. code:: text

        double precision, allocatable	:: pt2_w	(N_det_generators)
        double precision, allocatable	:: pt2_cw	(0:N_det_generators)
        double precision	:: pt2_w_t
        double precision	:: pt2_u_0
        integer, allocatable	:: pt2_n_0	(pt2_N_teeth+1)

    File: :file:`dress_stoch_routines.irp.f`

    




.. c:var:: pt2_w_t

    .. code:: text

        double precision, allocatable	:: pt2_w	(N_det_generators)
        double precision, allocatable	:: pt2_cw	(0:N_det_generators)
        double precision	:: pt2_w_t
        double precision	:: pt2_u_0
        integer, allocatable	:: pt2_n_0	(pt2_N_teeth+1)

    File: :file:`dress_stoch_routines.irp.f`

    




Subroutines / functions
-----------------------



.. c:function:: alpha_callback

    .. code:: text

        subroutine alpha_callback(delta_ij_loc, i_generator, subset, csubset, iproc)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: alpha_callback_mask

    .. code:: text

        subroutine alpha_callback_mask(delta_ij_loc, i_gen, sp, mask, bannedOrb, banned, indexes, indexes_end, rabuf, siz, iproc)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: bitstring_to_list_in_selection

    .. code:: text

        subroutine bitstring_to_list_in_selection( string, list, n_elements, Nint)

    File: :file:`alpha_factory.irp.f`

    Gives the inidices(+1) of the bits set to 1 in the bit string





.. c:function:: count_d1

    .. code:: text

        subroutine count_d1(countedOrb, p)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: count_d2

    .. code:: text

        subroutine count_d2(counted, p, sp)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: count_pq

    .. code:: text

        subroutine count_pq(mask, sp, det, i_gen, N_sel, bannedOrb, banned, countedGlob, countedOrb, counted, interesting)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: create_indexes

    .. code:: text

        subroutine create_indexes(countedGlob, countedOrb, counted, indexes, siz)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: dress_collector

    .. code:: text

        subroutine dress_collector(zmq_socket_pull, E, relative_error, delta, delta_s2, dress, istate)

    File: :file:`dress_stoch_routines.irp.f`

    





.. c:function:: dress_find_sample

    .. code:: text

        integer function dress_find_sample(v, w)

    File: :file:`dress_stoch_routines.irp.f`

    





.. c:function:: dress_slave

    .. code:: text

        subroutine dress_slave

    File: :file:`dress_slave.irp.f`

    Helper subroutine to compute the dress in distributed mode.





.. c:function:: dress_slave_inproc

    .. code:: text

        subroutine dress_slave_inproc(i)

    File: :file:`dress_stoch_routines.irp.f`

    





.. c:function:: dress_slave_tcp

    .. code:: text

        subroutine dress_slave_tcp(i,energy)

    File: :file:`dress_slave.irp.f`

    





.. c:function:: dress_zmq

    .. code:: text

        subroutine dress_zmq()

    File: :file:`dress_zmq_routines.irp.f`

    





.. c:function:: generate_singles_and_doubles

    .. code:: text

        subroutine generate_singles_and_doubles(delta_ij_loc, i_generator, bitmask_index, subset, csubset, iproc)

    File: :file:`alpha_factory.irp.f`

    TODO





.. c:function:: get_d1

    .. code:: text

        subroutine get_d1(i_gen, gen, banned, bannedOrb, indexes, abuf, mask, h, p, sp)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: get_d2

    .. code:: text

        subroutine get_d2(i_gen, gen, banned, bannedOrb, indexes, abuf, mask, h, p, sp)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: past_d1

    .. code:: text

        subroutine past_d1(bannedOrb, p)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: past_d2

    .. code:: text

        subroutine past_d2(banned, p, sp)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: provide_everything

    .. code:: text

        subroutine provide_everything

    File: :file:`dress_slave.irp.f`

    





.. c:function:: pull_dress_results

    .. code:: text

        subroutine pull_dress_results(zmq_socket_pull, m_task, f, edI_task, edI_index, breve_delta_m, task_id, n_tasks)

    File: :file:`run_dress_slave.irp.f`

    





.. c:function:: push_dress_results

    .. code:: text

        subroutine push_dress_results(zmq_socket_push, m_task, f, edI_task, edI_index, breve_delta_m, task_id, n_tasks)

    File: :file:`run_dress_slave.irp.f`

    





.. c:function:: run_dress_slave

    .. code:: text

        subroutine run_dress_slave(thread,iproce,energy)

    File: :file:`run_dress_slave.irp.f`

    





.. c:function:: run_dressing

    .. code:: text

        subroutine run_dressing(N_st,energy)

    File: :file:`dress_general.irp.f`

    





.. c:function:: run_wf

    .. code:: text

        subroutine run_wf

    File: :file:`dress_slave.irp.f`

    





.. c:function:: splash_pq

    .. code:: text

        subroutine splash_pq(mask, sp, det, i_gen, N_sel, bannedOrb, banned, indexes, abuf, interesting)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: spot_isinwf

    .. code:: text

        subroutine spot_isinwf(mask, det, i_gen, N, banned, fullMatch, interesting)

    File: :file:`alpha_factory.irp.f`

    





.. c:function:: testteethbuilding

    .. code:: text

        logical function testTeethBuilding(minF, N)

    File: :file:`dress_stoch_routines.irp.f`

    





.. c:function:: zmq_dress

    .. code:: text

        subroutine ZMQ_dress(E, dress, delta_out, delta_s2_out, relative_error)

    File: :file:`dress_stoch_routines.irp.f`

    


