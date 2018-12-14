program two_body_dm
  implicit none
  BEGIN_DOC
! TODO
  END_DOC
 read_wf = .True.
 touch read_wf
!call routine_print
!call provide_everything
 call comparaison_decomp_tensor
end

 subroutine provide_everything 
 implicit none

 double precision :: wall_1,wall_2,wall_3,wall_4

 provide two_bod_alpha_beta_mo_physician

 call wall_time(wall_1)
 print*, mos_array_r_j_tuck(1,1,1)
 call wall_time(wall_2)

 print*,'cpu time Tucker providing = ',wall_2 - wall_1

 call wall_time(wall_3)
 provide singular_left_vec_approx_svd_two_dm_at_r
 call wall_time(wall_4)

 print*,'cpu time SVD provinding = ',wall_4 - wall_3

 end

 subroutine comparaison_decomp_tensor
 implicit none

 double precision :: accu
 accu= E_cor_tot_normal_prov-integral_on_top_of_r_tucker(1)

 double precision :: accu_Manu
 accu_Manu= E_cor_tot_normal_prov-integral_on_top_of_r_approx_svd(1)


 print*, '**************'
 print*, 'Absolute error tucker          =', accu
 print*, 'Absolute error manual          =', accu_Manu
 print*, '**************'

 print*, '**************'
 print*, 'E_cor_tot_normal_provider      =', E_cor_tot_normal_prov
 print*, 'E_cor_tot_manual_provider      =', integral_on_top_of_r_approx_svd(1)
 print*, 'E_cor_tot_tucker_provider      =', integral_on_top_of_r_tucker(1) 
 print*, '**************'
 end


subroutine routine_print
 implicit none
  print*,'integral_on_top_of_r_approx_svd = ',integral_on_top_of_r_approx_svd

end


