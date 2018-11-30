subroutine twobodydump
  implicit none
  character*(128) :: output
  integer :: i_unit_output,getUnitAndOpen
  output=trim(ezfio_filename)//'.twobody_DUMP'
  i_unit_output = getUnitAndOpen(output,'w')

  integer :: i,j,k,l

  double precision :: integral
  PROVIDE two_bod_alpha_beta_mo_transposed

  do l=1,mo_tot_num
   do k=1,mo_tot_num
    do j=1,mo_tot_num
     do i=1,mo_tot_num
      integral = two_bod_alpha_beta_mo_transposed(i,j,k,l,1)
      if (dabs(integral) > 1d-16) then
        write(i_unit_output,*) integral, i,k,j,l
      else
       integral=0d0
       write(i_unit_output,*) integral, i,k,j,l
      endif
     enddo
    enddo
   enddo
  enddo
end

 BEGIN_PROVIDER [integer,n_eigen_i_tucker,(N_states)]
&BEGIN_PROVIDER [integer,n_eigen_j_tucker,(N_states)]
&BEGIN_PROVIDER [integer,n_eigen_i_tucker_max]
&BEGIN_PROVIDER [integer,n_eigen_j_tucker_max]
 implicit none
 BEGIN_DOC
 ! Compute the number of SV > thresh
 END_DOC
 integer :: i,j,k,l,jkl,istate
 double precision :: threshinou
 threshinou= thr_ontop_approx 
 print*,'************************'
 print*,'threshinou    =',threshinou
 print*,'************************'

 double precision :: integral
 double precision, allocatable :: mat_i(:,:),mat_j(:,:)
  print*,'alocate1'
 allocate(mat_i(mo_tot_num,mo_tot_num**3),mat_j(mo_tot_num,mo_tot_num**3))

 double precision, allocatable :: u_i(:,:),vt_i(:,:),D_i(:)

  print*,'alocate2'
 allocate(u_i(mo_tot_num,mo_tot_num),vt_i(mo_tot_num**3,mo_tot_num**3),D_i(mo_tot_num))

 double precision, allocatable :: u_j(:,:),vt_j(:,:),D_j(:)
  print*,'alocate3'
 allocate(u_j(mo_tot_num,mo_tot_num),vt_j(mo_tot_num**3,mo_tot_num**3),D_j(mo_tot_num))
!!!!!!!unfoldage!!!!!!!
 do istate = 1,N_states
  do i = 1,mo_tot_num
   jkl = 0
   do l=1,mo_tot_num
    do k=1,mo_tot_num
     do j=1,mo_tot_num
      jkl= jkl+1
      mat_i(i,jkl)= two_bod_alpha_beta_mo_transposed(i,j,k,l,istate)
     enddo
    enddo
   enddo
  enddo
 
  do j = 1,mo_tot_num
   jkl = 0
   do l=1,mo_tot_num
    do k=1,mo_tot_num
     do i=1,mo_tot_num
      jkl= jkl+1
      mat_j(j,jkl)= two_bod_alpha_beta_mo_transposed(i,j,k,l,istate)
     enddo
    enddo
   enddo
  enddo
  print*,'Unfoldage OK'
 
!!!!!!!!test SVD!!!!!!!
  
  call svd(mat_i,size(mat_i,1),u_i,size(u_i,1),D_i,vt_i,size(vt_i,1),size(mat_i,1),size(mat_i,2))
 
  call svd(mat_j,size(mat_j,1),u_j,size(u_j,1),D_j,vt_j,size(vt_j,1),size(mat_j,1),size(mat_j,2))

  !print*,'SVDs Ok' 
!!!!!!!!Selection valeur propre!!!!!!!
 
  n_eigen_i_tucker(istate) = 1
  print*,n_eigen_i_tucker(istate),D_i(n_eigen_i_tucker(istate)) 
  do while ( (dabs(D_i(n_eigen_i_tucker(istate))) .gt. threshinou) .AND. (n_eigen_i_tucker(istate) .lt. mo_tot_num)  )
   n_eigen_i_tucker(istate) += 1
   print*,n_eigen_i_tucker(istate),D_i(n_eigen_i_tucker(istate))
  enddo
  if (dabs(D_i(n_eigen_i_tucker(istate))) .lt. threshinou) then
   n_eigen_i_tucker(istate) -= 1 
  endif

  print*,'************************'
  print*,'n_eigen_i_tucker    =',n_eigen_i_tucker(istate)
  print*,'************************'
 
 
  n_eigen_j_tucker(istate) = 1 
  print*,n_eigen_j_tucker(istate),D_j(n_eigen_j_tucker(istate))
  do while ((dabs(D_j(n_eigen_j_tucker(istate))) .gt. threshinou) .AND. (n_eigen_j_tucker(istate) .lt. mo_tot_num))
   n_eigen_j_tucker += 1
   print*,n_eigen_j_tucker(istate),D_j(n_eigen_j_tucker(istate))
  enddo
  if (dabs(D_j(n_eigen_j_tucker(istate))) .lt. threshinou) then
   n_eigen_j_tucker(istate) -= 1
  endif
  print*,'************************'
  print*,'n_eigen_j_tucker    =',n_eigen_j_tucker(istate)
  print*,'************************'
 enddo

 n_eigen_i_tucker_max = maxval(n_eigen_i_tucker)
 n_eigen_j_tucker_max = maxval(n_eigen_j_tucker)

END_PROVIDER

 BEGIN_PROVIDER [double precision, truncated_u_i_tucker, (mo_tot_num,n_eigen_i_tucker_max,N_states)]
&BEGIN_PROVIDER [double precision, truncated_u_i_tucker_t, (n_eigen_i_tucker_max,mo_tot_num,N_states)]
&BEGIN_PROVIDER [double precision, truncated_u_j_tucker, (mo_tot_num,n_eigen_j_tucker_max,N_states)]
&BEGIN_PROVIDER [double precision, truncated_u_j_tucker_t, (n_eigen_j_tucker_max,mo_tot_num,N_states)]
&BEGIN_PROVIDER [double precision, g_tucker, (n_eigen_i_tucker_max,n_eigen_j_tucker_max,n_eigen_i_tucker_max,n_eigen_j_tucker_max,N_states)]
 implicit none
 integer :: istate,r1,r2,r3,r4,i,j,k,l,jkl

 double precision, allocatable :: mat_i(:,:),mat_j(:,:)
 allocate(mat_i(mo_tot_num,mo_tot_num**3),mat_j(mo_tot_num,mo_tot_num**3))

 double precision, allocatable :: u_i(:,:),vt_i(:,:),D_i(:)
 allocate(u_i(mo_tot_num,mo_tot_num),vt_i(mo_tot_num**3,mo_tot_num**3),D_i(mo_tot_num))

 double precision, allocatable :: u_j(:,:),vt_j(:,:),D_j(:)
 allocate(u_j(mo_tot_num,mo_tot_num),vt_j(mo_tot_num**3,mo_tot_num**3),D_j(mo_tot_num))


 g_tucker = 0d0

 !!!!!!unfoldage!!!!!!!
 do istate = 1,N_states
  do i = 1,mo_tot_num
   jkl = 0
   do l=1,mo_tot_num
    do k=1,mo_tot_num
     do j=1,mo_tot_num
      jkl= jkl+1
      mat_i(i,jkl)= two_bod_alpha_beta_mo_transposed(i,j,k,l,istate)
     enddo
    enddo
   enddo
  enddo
 
  do j = 1,mo_tot_num
   jkl = 0
   do l=1,mo_tot_num
    do k=1,mo_tot_num
     do i=1,mo_tot_num
      jkl= jkl+1
      mat_j(j,jkl)= two_bod_alpha_beta_mo_transposed(i,j,k,l,istate)
     enddo
    enddo
   enddo
  enddo
 
 !!!!!!!test SVD!!!!!!!
  
  call svd(mat_i,size(mat_i,1),u_i,size(u_i,1),D_i,vt_i,size(vt_i,1),size(mat_i,1),size(mat_i,2))
 
  call svd(mat_j,size(mat_j,1),u_j,size(u_j,1),D_j,vt_j,size(vt_j,1),size(mat_j,1),size(mat_j,2))


  !!!!!!Creation _truncated_U_i _truncated_U_j!!!!!!!
 
  do i=1,mo_tot_num
   do j=1,n_eigen_i_tucker(istate)
    truncated_u_i_tucker(i,j,istate) = u_i(i,j)
   enddo
  enddo
 
  do i=1,mo_tot_num
   do j=1,n_eigen_j_tucker(istate)
    truncated_u_j_tucker(i,j,istate) = u_j(i,j)
   enddo
  enddo
 
  !!!!!!test construction g!!!!!!!
  !!!!!!transposer  
 
  do i = 1,n_eigen_i_tucker(istate)
   do j = 1,mo_tot_num
    truncated_u_i_tucker_t(i,j,istate)=u_i(j,i)
   enddo
  enddo
 
  do i = 1,n_eigen_j_tucker(istate)
   do j = 1,mo_tot_num
    truncated_u_j_tucker_t(i,j,istate)=u_j(j,i)
   enddo
  enddo
 
  do i = 1,n_eigen_i_tucker(istate)
   do j = 1,n_eigen_j_tucker(istate)
    do k = 1,n_eigen_i_tucker(istate)
     do l =1,n_eigen_j_tucker(istate)
      do r1 = 1,mo_tot_num
       do r2 = 1,mo_tot_num
        do r3 = 1,mo_tot_num
         do r4 = 1,mo_tot_num
          g_tucker(i,j,k,l,istate) += two_bod_alpha_beta_mo_transposed(r1,r2,r3,r4,istate) * truncated_u_i_tucker_t(i,r1,istate) * truncated_u_j_tucker_t(j,r2,istate) * truncated_u_i_tucker_t(k,r3,istate) * truncated_u_j_tucker_t(l,r4,istate)
         enddo
        enddo
       enddo
      enddo
     enddo
    enddo
   enddo
  enddo

 enddo
END_PROVIDER

 BEGIN_PROVIDER [double precision, mos_array_r_i_tuck, (n_points_final_grid,n_eigen_i_tucker_max,N_states)] 
&BEGIN_PROVIDER [double precision, mos_array_r_j_tuck, (n_points_final_grid,n_eigen_j_tucker_max,N_states)]
 implicit none
 integer :: istate
 do istate = 1, N_states 
  call dgemm('N','N',n_points_final_grid,n_eigen_i_tucker_max,mo_tot_num,1.d0,mos_in_r_array_transp,n_points_final_grid,truncated_u_i_tucker(1,1,istate),mo_tot_num,0.d0,mos_array_r_i_tuck(1,1,istate),n_points_final_grid)
  call dgemm('N','N',n_points_final_grid,n_eigen_j_tucker_max,mo_tot_num,1.d0,mos_in_r_array_transp,n_points_final_grid,truncated_u_j_tucker(1,1,istate),mo_tot_num,0.d0,mos_array_r_j_tuck(1,1,istate),n_points_final_grid)
 enddo
END_PROVIDER

 BEGIN_PROVIDER [integer, manuel_map, (mo_tot_num**2,2)]
&BEGIN_PROVIDER [integer, manuel_map_rev, (mo_tot_num,mo_tot_num)]
 implicit none
 integer :: i,j,ij
 ij = 0
 do i = 1,mo_tot_num
  do j=1,mo_tot_num
   ij += 1
   manuel_map(ij,1) = i
   manuel_map(ij,2) = j
   manuel_map_rev(i,j) = ij
  enddo
 enddo

END_PROVIDER


 BEGIN_PROVIDER [integer, n_singular_manuel]
 implicit none
 integer :: i,j,k,l,ij,kl
 double precision :: threshinou
 threshinou= thr_ontop_approx

 print*,'************************'
 print*,'threshinou manual    =',threshinou
 print*,'************************'

 double precision, allocatable :: mat_i(:,:)
 allocate(mat_i(mo_tot_num**2,mo_tot_num**2))

 double precision, allocatable :: u_i(:,:),vt_i(:,:),D_i(:)
 allocate(u_i(mo_tot_num**2,mo_tot_num**2),vt_i(mo_tot_num**2,mo_tot_num**2),D_i(mo_tot_num**2))

 ij = 0
 kl = 0
 !!!!!!unfoldage!!!!!!!
 do i=1,mo_tot_num
  do j=1,mo_tot_num
   ij += 1
   kl = 0
   do k=1,mo_tot_num
    do l=1,mo_tot_num
     kl += 1
     mat_i(ij,kl)= two_bod_alpha_beta_mo_transposed(l,k,j,i,1)
    enddo
   enddo
  enddo
 enddo
 !!!!!!!test SVD!!!!!!!

  call svd(mat_i,size(mat_i,1),u_i,size(u_i,1),D_i,vt_i,size(vt_i,1),size(mat_i,1),size(mat_i,2))
 print*,'*****SVD TERMINE*' 
  n_singular_manuel =1 
  print*,n_singular_manuel,D_i(n_singular_manuel)
  do while ( (dabs(D_i(n_singular_manuel)) .gt. threshinou) .AND. (n_singular_manuel .lt. mo_tot_num**2)  )
   n_singular_manuel += 1
   print*,n_singular_manuel,D_i(n_singular_manuel)
  enddo
  if (dabs(D_i(n_singular_manuel)) .lt. threshinou) then
   n_singular_manuel -= 1
  endif

  print*,'************************'
  print*,'n_eigen_manual Giiiiiinnneeerrrrr    =',n_singular_manuel
  print*,'************************'

END_PROVIDER

 BEGIN_PROVIDER [double precision, singular_manuel, (n_singular_manuel)]
&BEGIN_PROVIDER [double precision, eigen_left_manuel, (mo_tot_num**2,n_singular_manuel)]
&BEGIN_PROVIDER [double precision, eigen_right_manuel, (mo_tot_num**2,n_singular_manuel)]
 implicit none
 integer :: i,j,k,l,ij,kl
 double precision, allocatable :: mat_i(:,:)
 allocate(mat_i(mo_tot_num**2,mo_tot_num**2))

 double precision, allocatable :: u_i(:,:),vt_i(:,:),D_i(:)
 allocate(u_i(mo_tot_num**2,mo_tot_num**2),vt_i(mo_tot_num**2,mo_tot_num**2),D_i(mo_tot_num**2))

 ij = 0
 kl = 0
 !!!!!!unfoldage!!!!!!!
 do i = 1,mo_tot_num
  do j=1,mo_tot_num
   ij += 1
   kl = 0
   do k=1,mo_tot_num
    do l=1,mo_tot_num
     kl += 1
     mat_i(ij,kl)= two_bod_alpha_beta_mo_transposed(l,k,j,i,1)
    enddo
   enddo
  enddo
 enddo
 !!!!!!!test SVD!!!!!!!

  call svd(mat_i,size(mat_i,1),u_i,size(u_i,1),D_i,vt_i,size(vt_i,1),size(mat_i,1),size(mat_i,2))

 do i = 1,n_singular_manuel
  singular_manuel(i) = D_i(i)
  do j = 1,mo_tot_num**2
   eigen_left_manuel(j,i) = u_i(j,i)
   eigen_right_manuel(j,i) = vt_i(i,j)
  enddo 
 enddo

END_PROVIDER


 BEGIN_PROVIDER [double precision, eigen_left_manuel_r, (n_points_final_grid,n_singular_manuel)]
&BEGIN_PROVIDER [double precision, eigen_right_manuel_r, (n_points_final_grid,n_singular_manuel)]
 implicit none
 integer :: i,j,k

 eigen_left_manuel_r = 0d0
 eigen_right_manuel_r = 0d0
 !!!!!!unfoldage!!!!!!!
 do i = 1,n_points_final_grid
  do j = 1,n_singular_manuel 
   do k = 1,mo_tot_num**2
    eigen_left_manuel_r(i,j)+= eigen_left_manuel(k,j) * mos_in_r_array(manuel_map(k,1),i) * mos_in_r_array(manuel_map(k,2),i)
    eigen_right_manuel_r(i,j)+= eigen_right_manuel(k,j) * mos_in_r_array(manuel_map(k,1),i) * mos_in_r_array(manuel_map(k,2),i) 
   enddo
  enddo
 enddo

END_PROVIDER

 BEGIN_PROVIDER [double precision, E_cor_tot_manual_prov]
 implicit none
 integer :: i,k
 double precision :: weight,wall_1,wall_2
 
 E_cor_tot_manual_prov = 0d0
 provide eigen_left_manuel_r

 call wall_time(wall_1)
 do i = 1, n_points_final_grid
  weight=final_weight_functions_at_final_grid_points(i)
  do k =1,n_singular_manuel
   E_cor_tot_manual_prov += singular_manuel(k) * eigen_left_manuel_r(i,k) * eigen_right_manuel_r(i,k) * weight
  enddo
 enddo
 call wall_time(wall_2)
 print*,'wall time Manual = ',wall_2 - wall_1

END_PROVIDER

  BEGIN_PROVIDER [double precision, E_cor_tot_tucker_fast_prov]
 implicit none
 integer :: i,r1,r2,r3,r4
 double precision :: weight,wall_1,wall_2

 E_cor_tot_tucker_fast_prov = 0d0
 provide g_tucker

 call wall_time(wall_1)
 do i = 1, n_points_final_grid
  weight=final_weight_functions_at_final_grid_points(i)

   do r1 =1,n_eigen_i_tucker(1)
    do r2 = 1,n_eigen_j_tucker(1)
     do r3 = 1,n_eigen_i_tucker(1)
      do r4 = 1,n_eigen_j_tucker(1)
       E_cor_tot_tucker_fast_prov += g_tucker(r1,r2,r3,r4,1) * weight * mos_array_r_i_tuck(i,r1,1) * mos_array_r_j_tuck(i,r2,1) *mos_array_r_i_tuck(i,r3,1) * mos_array_r_j_tuck(i,r4,1)
      enddo
     enddo
    enddo
   enddo

 enddo
 call wall_time(wall_2)
 print*,'wall time Tucker fast = ',wall_2 - wall_1
END_PROVIDER

  BEGIN_PROVIDER [double precision, E_cor_tot_normal_prov]
 implicit none
 integer :: i,m,n,p,q
 double precision :: weight,wall_4,wall_3
 E_cor_tot_normal_prov = 0d0
 provide two_bod_alpha_beta_mo_transposed

 call wall_time(wall_3)
 do i = 1, n_points_final_grid
  weight=final_weight_functions_at_final_grid_points(i)

  do m = 1,mo_tot_num
   do n = 1,mo_tot_num
    do p = 1,mo_tot_num
     do q =1,mo_tot_num
      E_cor_tot_normal_prov += two_bod_alpha_beta_mo_transposed(q,p,n,m,1) *mos_in_r_array(m,i) * mos_in_r_array(n,i) * mos_in_r_array(p,i) * mos_in_r_array(q,i) * weight
     enddo
    enddo
   enddo
  enddo

 enddo
 call wall_time(wall_4)
print*,'wall time exact  = ',wall_4 - wall_3
END_PROVIDER

 subroutine comparaison_decomp_tensor
 implicit none

 double precision :: accu
 accu= E_cor_tot_normal_prov-E_cor_tot_tucker_fast_prov

 double precision :: accu_Manu
 accu_Manu= E_cor_tot_normal_prov-E_cor_tot_manual_prov


 print*, '**************'
 print*, 'Absolute error tucker          =', accu
 print*, 'Absolute error manual          =', accu_Manu
 print*, '**************'

 print*, '**************'
 print*, 'E_cor_tot_normal_provider      =', E_cor_tot_normal_prov
 print*, 'E_cor_tot_manual_provider      =', E_cor_tot_manual_prov
 print*, 'E_cor_tot_tucker_provider_fast =', E_cor_tot_tucker_fast_prov
 print*, '**************'
 end

