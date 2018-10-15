program selection_slave
  implicit none
  BEGIN_DOC
! Helper program to compute the PT2 in distributed mode.
  END_DOC

  call omp_set_nested(.false.)
  read_wf = .False.
  distributed_davidson = .False.
  SOFT_TOUCH read_wf distributed_davidson
  call provide_everything
  call switch_qp_run_to_master
  call run_wf
end

subroutine provide_everything
  PROVIDE H_apply_buffer_allocated mo_bielec_integrals_in_map psi_det_sorted_bit n_states zmq_context N_states_diag
  PROVIDE mo_tot_num N_int ci_energy mpi_master zmq_state zmq_context
  PROVIDE psi_det psi_coef state_average_weight 
  PROVIDE N_det 
end

subroutine run_wf
  use f77_zmq
  
  implicit none
  IRP_IF MPI
    include 'mpif.h'
  IRP_ENDIF

  integer(ZMQ_PTR), external :: new_zmq_to_qp_run_socket
  integer(ZMQ_PTR) :: zmq_to_qp_run_socket
  double precision :: energy(N_states)
  character*(64) :: states(3)
  character*(64) :: old_state
  integer :: rc, i, ierr
  double precision :: t0, t1
  
  integer, external              :: zmq_get_dvector, zmq_get_N_det_generators 
  integer, external              :: zmq_get8_dvector
  integer, external              :: zmq_get_ivector
  integer, external              :: zmq_get_psi, zmq_get_N_det_selectors, zmq_get_psi_bilinear
  integer, external              :: zmq_get_psi_notouch
  integer, external              :: zmq_get_N_states_diag

  zmq_context = f77_zmq_ctx_new ()
  states(1) = 'davidson'
  old_state = 'Waiting'

  zmq_to_qp_run_socket = new_zmq_to_qp_run_socket()

  PROVIDE psi_det psi_coef state_average_weight mpi_master
  PROVIDE zmq_state N_det 
  PROVIDE N_states N_states_diag psi_energy

  IRP_IF MPI
    call MPI_BARRIER(MPI_COMM_WORLD, ierr)
  IRP_ENDIF
  do

    if (mpi_master) then
      call wait_for_states(states,zmq_state,size(states))
      if (zmq_state(1:64) == old_state(1:64)) then
        call sleep(1)
        cycle
      else
        old_state(1:64) = zmq_state(1:64)
      endif
      print *,  trim(zmq_state)
    endif

    IRP_IF MPI_DEBUG
      print *,  irp_here, mpi_rank
      call MPI_BARRIER(MPI_COMM_WORLD, ierr)
    IRP_ENDIF
    IRP_IF MPI
      call MPI_BCAST (zmq_state, 128, MPI_CHARACTER, 0, MPI_COMM_WORLD, ierr)
      if (ierr /= MPI_SUCCESS) then
        print *,  irp_here, 'error in broadcast of zmq_state'
      endif
    IRP_ENDIF

    if(zmq_state(1:7) == 'Stopped') then
      exit
    endif


    if (zmq_state(1:8) == 'davidson') then

      ! Davidson
      ! --------

      call wall_time(t0)
      if (zmq_get_N_states_diag(zmq_to_qp_run_socket,1) == -1) cycle
      if (zmq_get_psi(zmq_to_qp_run_socket,1) == -1) cycle
      if (zmq_get_dvector(zmq_to_qp_run_socket,1,'energy',energy,N_states_diag) == -1) cycle

      call wall_time(t1)
      if (mpi_master) then
        call write_double(6,(t1-t0),'Broadcast time')
      endif

      call omp_set_nested(.True.)
      call davidson_slave_tcp(0)
      call omp_set_nested(.False.)
      print *,  'Davidson done'
      IRP_IF MPI
        call MPI_BARRIER(MPI_COMM_WORLD, ierr)
        if (ierr /= MPI_SUCCESS) then
          print *,  irp_here, 'error in barrier'
        endif
      IRP_ENDIF
      print *,  'All Davidson done'

    endif

  end do
  IRP_IF MPI
    call MPI_finalize(ierr)
  IRP_ENDIF
end



