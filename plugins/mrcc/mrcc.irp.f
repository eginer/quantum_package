program shifted_bk
  implicit none
  BEGIN_DOC
! TODO
  END_DOC
  !print *, "neu verzion"  
  
  PROVIDE psi_bilinear_matrix_columns_loc psi_det_alpha_unique psi_det_beta_unique
  PROVIDE psi_bilinear_matrix_rows psi_det_sorted_gen_order psi_bilinear_matrix_order
  PROVIDE psi_bilinear_matrix_transp_rows_loc psi_bilinear_matrix_transp_columns
  PROVIDE psi_bilinear_matrix_transp_order

  read_wf = .True.
  SOFT_TOUCH read_wf
  call set_generators_bitmasks_as_holes_and_particles
  if (.True.) then
    integer :: i,j
    do j=1,N_states
      do i=1,N_det
        psi_coef(i,j) = CI_eigenvectors(i,j)
      enddo
    enddo
    TOUCH psi_coef
  endif

  call dress_zmq()
  if (.true.) then
    call ezfio_set_mrcc_energy(ci_energy_dressed(1))
  endif
  if (do_pt2) then
    call run_pt2(N_states, ci_energy_dressed)
  endif
end


subroutine run_pt2(N_st,energy) 
  implicit none 
  integer :: i,j,k 
  integer, intent(in)          :: N_st 
  double precision, intent(in) :: energy(N_st) 
  double precision :: pt2(N_st)
  double precision :: norm_pert(N_st),H_pert_diag(N_st)
  
  pt2 = 0d0
  !if(lambda_mrcc_pt2(0)  == 0) return
  
  print*,'Last iteration only to compute the PT2' 
  
  N_det_generators = N_det_cas
  N_det_selectors = N_det_non_ref

  do i=1,N_det_generators
    do k=1,N_int
      psi_det_generators(k,1,i) = psi_ref(k,1,i)
      psi_det_generators(k,2,i) = psi_ref(k,2,i)
    enddo
    do k=1,N_st
      psi_coef_generators(i,k) = psi_ref_coef(i,k)
    enddo
  enddo
  do i=1,N_det
    do k=1,N_int
      psi_selectors(k,1,i) = psi_det_sorted(k,1,i)
      psi_selectors(k,2,i) = psi_det_sorted(k,2,i)
    enddo
    do k=1,N_st
      psi_selectors_coef(i,k) = psi_coef_sorted(i,k)
    enddo
  enddo

  SOFT_TOUCH N_det_selectors psi_selectors_coef psi_selectors N_det_generators psi_det_generators psi_coef_generators ci_eigenvectors_dressed ci_eigenvectors_s2_dressed ci_electronic_energy_dressed
  SOFT_TOUCH psi_ref_coef_diagonalized psi_ref_energy_diagonalized

  call H_apply_mrcepa_PT2(pt2, norm_pert, H_pert_diag,  N_st)

!  call ezfio_set_full_ci_energy_pt2(energy+pt2)

  print *,  'Final step'
  print *,  'N_det    = ', N_det
  print *,  'N_states = ', N_states
  print *,  'PT2      = ', pt2
  print *,  'E        = ', energy
  print *,  'E+PT2    = ', energy+pt2
  print *,  '-----'

  call ezfio_set_mrcc_energy_pt2(energy(1)+pt2(1))

end 

