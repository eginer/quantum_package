
 BEGIN_PROVIDER [double precision, on_top_of_r_vector,(n_points_final_grid,N_states) ]
 implicit none
 BEGIN_DOC
 ! On top pair density as a function of r given as a single array of r points
 ! Can use the regular two-body tensor or approximated versions
 END_DOC
 integer :: i_point,i_state
 if(ontop_approx)then
  do i_point = 1, n_points_final_grid
   do i_state = 1, N_states
    on_top_of_r_vector(i_point,i_state) = on_top_of_r_approx_svd(i_point,i_state)
   enddo
  enddo
 else
  do i_point = 1, n_points_final_grid
   do i_state = 1, N_states
    on_top_of_r_vector(i_point,i_state) = on_top_of_r_exact(i_point,i_state)
   enddo
  enddo
 endif
 END_PROVIDER


 BEGIN_PROVIDER [double precision, on_top_of_r,(n_points_integration_angular,n_points_radial_grid,nucl_num,N_states) ]
 implicit none
 BEGIN_DOC
 ! On top pair density as a function of r given by the angular and nuclear points attached per atoms 
 END_DOC
 integer :: i_point,i_state
 integer :: i,j,k
 do i_state = 1, N_states
  do i_point = 1, n_points_final_grid
   k = index_final_points(1,i_point)
   i = index_final_points(2,i_point)
   j = index_final_points(3,i_point)
   on_top_of_r(k,i,j,i_state) = on_top_of_r_vector(i_point,i_state)
  enddo  
 enddo
 END_PROVIDER

 BEGIN_PROVIDER [double precision, on_top_of_r_exact,(n_points_final_grid,N_states) ]
 implicit none
 BEGIN_DOC
 ! on top pair density at each grid point computed using the full two-body density matrix 
 END_DOC
 integer :: i_point,i_state
 double precision :: wall_0,wall_1
 double precision :: on_top_of_r_from_provider

 print*,'providing the on_top_of_r_exact'
 i_point = 1
 i_state = 1
 on_top_of_r_exact(i_point,i_state) = on_top_of_r_from_provider(i_point,i_state)
 call wall_time(wall_0)
 !$OMP PARALLEL DO &
 !$OMP DEFAULT (NONE)  &
 !$OMP PRIVATE (i_point,i_state) & 
 !$OMP SHARED(on_top_of_r_exact,n_points_final_grid,N_states)
 do i_point = 1, n_points_final_grid
  do i_state = 1, N_states
   on_top_of_r_exact(i_point,i_state) = on_top_of_r_from_provider(i_point,i_state)
  enddo
 enddo
 !$OMP END PARALLEL DO
 call wall_time(wall_1)
 print*,'provided the on_top_of_r_exact'
 print*,'Time to provide :',wall_1 - wall_0
 END_PROVIDER 

 

double precision function two_dm_in_r(r1,r2,istate)
 implicit none
 BEGIN_DOC
 ! two body density evaluated ar two points in real space 
 END_DOC
 integer, intent(in) :: istate
 double precision, intent(in) :: r1(3),r2(3)
 double precision, allocatable :: mos_array_r1(:), mos_array_r2(:)
 integer :: i,j,k,l
 allocate(mos_array_r2(mo_tot_num), mos_array_r1(mo_tot_num))
 call give_all_mos_at_r(r1,mos_array_r1) 
 call give_all_mos_at_r(r2,mos_array_r2) 
 two_dm_in_r = 0.d0
 do l = 1, mo_tot_num 
  do k = 1, mo_tot_num 
    do j = 1, mo_tot_num
     do i = 1, mo_tot_num
     !                                              1 2 1 2 
     two_dm_in_r += two_bod_alpha_beta_mo_physician(i,j,k,l,istate) * mos_array_r1(i) * mos_array_r1(k) * mos_array_r2(j) * mos_array_r2(l)
    enddo
   enddo
  enddo
 enddo
 two_dm_in_r = max(two_dm_in_r,1.d-15)
end

 double precision function on_top_of_r_from_provider(ipoint,istate)
 implicit none
 BEGIN_DOC
 ! on top pair density evaluated at a given point of the grid 
 END_DOC
 integer, intent(in) :: ipoint,istate
 integer :: i,j,k,l 
 on_top_of_r_from_provider = 0.d0
 do l = 1, mo_tot_num 
  do k = 1, mo_tot_num 
    do j = 1, mo_tot_num
     do i = 1, mo_tot_num
     !                                                            1 2 1 2 
     on_top_of_r_from_provider += two_bod_alpha_beta_mo_physician(i,j,k,l,istate) * mos_in_r_array(j,ipoint) * mos_in_r_array(i,ipoint) * mos_in_r_array(l,ipoint) * mos_in_r_array(k,ipoint)
    enddo
   enddo
  enddo
 enddo
 end
