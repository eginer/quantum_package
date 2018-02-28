double precision function ao_value(i,r)
 implicit none
 BEGIN_DOC
! return the value of the ith ao at point r
 END_DOC
 double precision, intent(in) :: r(3)
 integer, intent(in) :: i

 integer :: m,num_ao
 double precision :: center_ao(3)
 double precision :: beta
 integer :: power_ao(3) 
 double precision :: accu,dx,dy,dz,r2
 num_ao = ao_nucl(i)
 power_ao(1:3)= ao_power(i,1:3)
 center_ao(1:3) = nucl_coord(num_ao,1:3)
 dx = (r(1) - center_ao(1)) 
 dy = (r(2) - center_ao(2)) 
 dz = (r(3) - center_ao(3)) 
 r2 = dx*dx + dy*dy + dz*dz
 dx = dx**power_ao(1)
 dy = dy**power_ao(2)
 dz = dz**power_ao(3)

 accu = 0.d0
 do m=1,ao_prim_num(i)
   beta = ao_expo_ordered_transp(m,i)
   accu += ao_coef_normalized_ordered_transp(m,i) * dexp(-beta*r2) 
 enddo
 ao_value = accu * dx * dy * dz

end

subroutine give_all_aos_at_r_old(r,aos_array)
 implicit none
 BEGIN_dOC
! gives the values of aos at a given point r
 END_DOC
 double precision, intent(in) :: r(3)
 double precision, intent(out) :: aos_array(ao_num)
 integer :: i
 double precision :: ao_value
 do i = 1, ao_num 
  aos_array(i) = ao_value(i,r)
 enddo
end


subroutine give_all_aos_at_r(r,aos_array)
 implicit none
 double precision, intent(in) :: r(3)
 double precision, intent(out) :: aos_array(ao_num)
 
 integer :: power_ao(3) 
 integer :: i,j,k,l,m
 double precision :: dx,dy,dz,r2
 double precision ::      dx2,dy2,dz2
 double precision :: center_ao(3)
 double precision :: beta
 do i = 1, nucl_num
  center_ao(1:3) = nucl_coord(i,1:3)
  dx = (r(1) - center_ao(1)) 
  dy = (r(2) - center_ao(2)) 
  dz = (r(3) - center_ao(3)) 
  r2 = dx*dx + dy*dy + dz*dz
  do j = 1,Nucl_N_Aos(i) 
   k = Nucl_Aos_transposed(j,i) ! index of the ao in the ordered format 
   aos_array(k) = 0.d0
   power_ao(1:3)= ao_power_ordered_transp_per_nucl(1:3,j,i)
   double precision :: power
   dx2 = power(power_ao(1),dx)
   dy2 = power(power_ao(2),dy)
   dz2 = power(power_ao(3),dz)
   do l = 1,ao_prim_num(k) 
    beta = ao_expo_ordered_transp_per_nucl(l,j,i)
    aos_array(k)+= ao_coef_normalized_ordered_transp_per_nucl(l,j,i) * dexp(-beta*r2) 
   enddo
   aos_array(k) = aos_array(k) * dx2 * dy2 * dz2
  enddo
 enddo
end


subroutine give_all_aos_and_grad_at_r_new(r,aos_array,aos_grad_array)
 implicit none
 double precision, intent(in) :: r(3)
 double precision, intent(out) :: aos_array(ao_num)
 double precision, intent(out) :: aos_grad_array(3,ao_num)
 
 integer :: power_ao(3) 
 integer :: i,j,k,l,m
 double precision :: dx,dy,dz,r2
 double precision ::      dx2,dy2,dz2
 double precision ::      dx1,dy1,dz1
 double precision :: center_ao(3)
 double precision :: beta,accu_1,accu_2,contrib
 do i = 1, nucl_num
  center_ao(1:3) = nucl_coord(i,1:3)
  dx = (r(1) - center_ao(1)) 
  dy = (r(2) - center_ao(2)) 
  dz = (r(3) - center_ao(3)) 
  r2 = dx*dx + dy*dy + dz*dz
  do j = 1,Nucl_N_Aos(i) 
   k = Nucl_Aos_transposed(j,i) ! index of the ao in the ordered format 
   aos_array(k) = 0.d0
   aos_grad_array(1,k) = 0.d0
   aos_grad_array(2,k) = 0.d0
   aos_grad_array(3,k) = 0.d0
   power_ao(1:3)= ao_power_ordered_transp_per_nucl(1:3,j,i)
   dx2 = dx**power_ao(1)
   dy2 = dy**power_ao(2)
   dz2 = dz**power_ao(3)
   dx1 = dble(power_ao(1)) * dx**(power_ao(1)-1)
   dy1 = dble(power_ao(2)) * dy**(power_ao(2)-1)
   dz1 = dble(power_ao(3)) * dz**(power_ao(3)-1)
   accu_1 = 0.d0
   accu_2 = 0.d0
   do l = 1,ao_prim_num(k) 
    beta = ao_expo_ordered_transp_per_nucl(l,j,i)
    contrib = ao_coef_normalized_ordered_transp_per_nucl(l,j,i) * dexp(-beta*r2) 
    accu_1 += contrib
    accu_2 += contrib * beta
   enddo
   aos_array(k) = accu_1 * dx2 * dy2 * dz2
   aos_grad_array(1,k) = accu_1 * dx1  * dy2 * dz2 - 2.d0 * dx2 * dx  * dy2 * dz2 * accu_2
   aos_grad_array(2,k) = accu_1 * dx2  * dy1 * dz2 - 2.d0 * dx2 * dy2 * dy  * dz2 * accu_2
   aos_grad_array(3,k) = accu_1 * dx2  * dy2 * dz1 - 2.d0 * dx2 * dy2 * dz2 * dz  * accu_2
!  if(isnan(aos_grad_array(1,k)))then
!   print*, k
!   print*, power_ao
!  endif
  enddo
 enddo
end

