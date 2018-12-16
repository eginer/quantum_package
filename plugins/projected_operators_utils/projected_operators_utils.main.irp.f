program projected_operators
  implicit none
  BEGIN_DOC
! TODO
  END_DOC
  read_wf = .True.
  touch read_wf
  call routine_v
! call routine_rho 
! call routine_final

end

subroutine routine_rho
 implicit none
 provide rho2_kl_contracted_r6
 provide integral_r1r2_f_psi_ab
 print*,'integral_r1r2_f_psi_ab = ',integral_r1r2_f_psi_ab
 print*,'psi_energy_bielec      = ',psi_energy_bielec

end
subroutine routine_v
 implicit none
 integer :: ipoint,k,l
 double precision :: accu, weight,r(3),integral_of_f_PSI_ab_over_2,f_HF_aa_integrated
 accu = 0.d0
 do ipoint  = 1, n_points_final_grid
  weight=final_weight_functions_at_final_grid_points(ipoint)
  r(1) = final_grid_points(1,ipoint)
  r(2) = final_grid_points(2,ipoint)
  r(3) = final_grid_points(3,ipoint)
  accu += f_HF_aa_integrated(r) * weight
! accu += integral_of_f_PSI_ab_over_2(r) * weight
 enddo
 print*,'accu                   = ',accu
 print*,'psi_energy_bielec      = ',psi_energy_bielec
!print*,'integral_f_hf          = ',integral_f_hf
 accu = 0.d0
 integer :: i,j
 do i = 1, mo_tot_num
  do j = 1, mo_tot_num
   accu +=  two_bod_alpha_beta_mo(j,j,i,i,1)
  enddo
 enddo
 print*,'accu = ',accu
end
 

subroutine routine_final
 implicit none
 provide integral_f_psi_ab_old
!integer :: ipoint
!double precision :: accu, weight
!accu = 0.d0
!do ipoint  = 1, n_points_final_grid
! weight=final_weight_functions_at_final_grid_points(ipoint)
! accu += (f_psi_ab(ipoint) - f_psi_ab_old(ipoint)) *weight
!enddo
!print*,'*******************'
!print*,'*******************'
!print*,'*******************'
!print*,'*******************'
!print*,'accu = ',accu


end
