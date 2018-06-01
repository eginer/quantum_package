 BEGIN_PROVIDER [ integer, dirac_ao_num ]
 implicit none
  BEGIN_DOC
  ! Concatenation of the large and small components orbital properties
  ! in general arrays, for use in the bi-electronic integrals
  END_DOC
  dirac_ao_num = large_ao_num + small_ao_num 
  END_PROVIDER


 BEGIN_PROVIDER [ integer, dirac_ao_prim_num, (dirac_ao_num) ]
 implicit none
  BEGIN_DOC
  ! Concatenation of the large and small components orbital properties
  ! in general arrays, for use in the bi-electronic integrals
  END_DOC
  integer                        :: i,i_minus
  do i = 1, dirac_ao_num
   if (i .le. large_ao_num) then
   dirac_ao_prim_num (i) = large_ao_prim_num(i)
   else
   i_minus = i - large_ao_num
   dirac_ao_prim_num (i) = small_ao_prim_num(i_minus)
   endif 
  enddo
 END_PROVIDER

 BEGIN_PROVIDER [ integer, dirac_ao_prim_num_max ]
 implicit none
 BEGIN_DOC
 ! max number of primitives
 END_DOC
 dirac_ao_prim_num_max = maxval(dirac_ao_prim_num)
 END_PROVIDER

 BEGIN_PROVIDER [ integer, dirac_mo_tot_num ]
  implicit none
  BEGIN_DOC
  ! Number of small component MOs
  END_DOC
  dirac_mo_tot_num = large_mo_tot_num + small_mo_tot_num
 END_PROVIDER

 BEGIN_PROVIDER [ integer, dirac_ao_nucl, (dirac_ao_num) ]
 &BEGIN_PROVIDER [ double precision, dirac_ao_coef_normalized_ordered_transp, (dirac_ao_prim_num_max,dirac_ao_num) ]
 &BEGIN_PROVIDER [ double precision, dirac_ao_expo_ordered_transp, (dirac_ao_prim_num_max,dirac_ao_num) ]
 &BEGIN_PROVIDER [ integer, dirac_ao_power, (dirac_ao_num,3) ]
 &BEGIN_PROVIDER [ integer, dirac_ao_l, (dirac_ao_num) ]
  implicit none
  BEGIN_DOC
  ! Concatenation of the large and small components orbital properties
  ! in general arrays, for use in the bi-electronic integrals
  END_DOC
  integer                        :: i,i_minus,j,k,l
  do i = 1, dirac_ao_num
   if (i <= large_ao_num) then
    dirac_ao_nucl(i) = large_ao_nucl(i)
    dirac_ao_l(i) = large_ao_l(i)
    do k = 1, large_ao_prim_num(i)
     dirac_ao_coef_normalized_ordered_transp(k,i) = large_ao_coef_normalized_ordered_transp(k,i)
     dirac_ao_expo_ordered_transp(k,i) = large_ao_expo_ordered_transp(k,i)
    enddo
    do l = 1, 3
     dirac_ao_power(i,l) = large_ao_power(i,l)
    enddo
   elseif (i .gt. large_ao_num) then
    i_minus = i - ao_num
    dirac_ao_nucl(i) = small_ao_nucl(i_minus)
    dirac_ao_l(i) = small_ao_l(i_minus)
    do k = 1, small_ao_prim_num(i_minus)
     dirac_ao_coef_normalized_ordered_transp(k,i) = small_ao_coef_normalized_ordered_transp(k,i_minus)
     dirac_ao_expo_ordered_transp(k,i) = small_ao_expo_ordered_transp(k,i_minus)
    enddo
    do l = 1, 3
     dirac_ao_power(i,l) = small_ao_power(i_minus,l)
    enddo
   endif
  enddo
 END_PROVIDER

 BEGIN_PROVIDER [ double precision, dirac_ao_integrals_threshold  ]
  implicit none
  BEGIN_DOC
  ! If |<pq|rs>| < ao_integrals_threshold then <pq|rs> is zero
  END_DOC
 dirac_ao_integrals_threshold =  ao_integrals_threshold
 END_PROVIDER


 BEGIN_PROVIDER [ complex*16, dirac_ao_overlap,(2*dirac_ao_num,2*dirac_ao_num) ]
  implicit none
  BEGIN_DOC
 !Overlap between atomic basis functions of the small component:
 !:math:`\int \chi_i(r) \chi_j(r) dr)`
  END_DOC
  integer :: i,i_minus,j,j_minus
  dirac_ao_overlap = (0.d0,0.d0)
  do j=1, 2*dirac_ao_num
   if (j .le. large_ao_num) then
    do i=1, 2*dirac_ao_num
     if (i .le. large_ao_num) then
      dirac_ao_overlap(i,j) += (1.d0,0.d0)*large_ao_overlap(i,j)
     endif
    enddo
   elseif (j .gt. large_ao_num .and. j .le. 2*large_ao_num) then
    j_minus = j - large_ao_num
    do i=1, 2*dirac_ao_num
     if (i .gt. large_ao_num .and. i .le. 2*large_ao_num) then
      i_minus = i - large_ao_num
      dirac_ao_overlap(i,j) += (1.d0,0.d0)*large_ao_overlap(i_minus,j_minus)
     endif
    enddo
   elseif (j.gt. 2*large_ao_num .and. j .le. (2*large_ao_num+small_ao_num)) then
    j_minus = j - 2*large_ao_num
    do i=1, 2*dirac_ao_num
    i_minus = i - 2*large_ao_num
     if (i .gt. 2*large_ao_num .and. i .le. (2*large_ao_num+small_ao_num)) then
      dirac_ao_overlap(i,j) += (1.d0,0.d0)*small_ao_overlap(i_minus,j_minus)
     endif
    enddo
   elseif (j .gt. (2*large_ao_num + small_ao_num)) then
    j_minus = j - (2*large_ao_num + small_ao_num)
    do i=1, 2*(large_ao_num+small_ao_num)
     if (i .gt. (2*large_ao_num+small_ao_num)) then
      i_minus = i - (2*large_ao_num + small_ao_num)
      dirac_ao_overlap(i,j) += (1.d0,0.d0)*small_ao_overlap(i_minus,j_minus)
     endif
    enddo
   endif
  enddo
 END_PROVIDER


 BEGIN_PROVIDER [ double precision, dirac_ao_overlap_abs,(dirac_ao_num,dirac_ao_num) ]
  implicit none
  BEGIN_DOC  
 !Overlap between absolute value of atomic basis functions:
 !:math:`\int |\chi_i(r)| |\chi_j(r)| dr)`
 !This matrix has no physical meaning, considering the large
 !and small basis are in different mathematical spaces. 
 !It only serves the purpose of calculating thresholds for 
 !general bi-electronic integrals
  END_DOC
  integer :: i,j,n,l
  double precision :: f
  integer :: dim1
  double precision :: dirac_overlap, dirac_overlap_x, dirac_overlap_y, dirac_overlap_z
  double precision :: alpha , beta , c 
  double precision :: A_center(3), B_center(3)
  integer :: power_A(3), power_B(3)
  double precision :: lower_exp_val, dx
  dim1=500
  lower_exp_val = 40.d0
  c = 1
  do j=1, dirac_ao_num
   A_center(1) = nucl_coord( dirac_ao_nucl(j), 1 )
   A_center(2) = nucl_coord( dirac_ao_nucl(j), 2 )
   A_center(3) = nucl_coord( dirac_ao_nucl(j), 3 )
   power_A(1)  = dirac_ao_power( j, 1 )
   power_A(2)  = dirac_ao_power( j, 2 )
   power_A(3)  = dirac_ao_power( j, 3 )
   do i= 1, dirac_ao_num
    B_center(1) = nucl_coord( dirac_ao_nucl(i), 1 )
    B_center(2) = nucl_coord( dirac_ao_nucl(i), 2 )
    B_center(3) = nucl_coord( dirac_ao_nucl(i), 3 )
    power_B(1)  = dirac_ao_power( i, 1 )
    power_B(2)  = dirac_ao_power( i, 2 )
    power_B(3)  = dirac_ao_power( i, 3 )
    do n = 1,dirac_ao_prim_num(j)
     alpha  = dirac_ao_expo_ordered_transp(n,j)
     do l = 1, dirac_ao_prim_num(i)
      beta  = dirac_ao_expo_ordered_transp(l,i)
      call overlap_x_abs(A_center(1),B_center(1),alpha,beta,power_A(1),power_B(1),dirac_overlap_x,lower_exp_val,dx,dim1)
      call overlap_x_abs(A_center(2),B_center(2),alpha,beta,power_A(2),power_B(2),dirac_overlap_y,lower_exp_val,dx,dim1)
      call overlap_x_abs(A_center(3),B_center(3),alpha,beta,power_A(3),power_B(3),dirac_overlap_z,lower_exp_val,dx,dim1)
      c = dirac_ao_coef_normalized_ordered_transp(n,j) * dirac_ao_coef_normalized_ordered_transp(l,i)
      dirac_ao_overlap_abs(i,j) += abs(c) * dirac_overlap_x * dirac_overlap_y * dirac_overlap_z
     enddo
    enddo
   enddo
  enddo 
 END_PROVIDER



 BEGIN_PROVIDER [ integer, d_L, (2*dirac_ao_num) ]
 &BEGIN_PROVIDER [ integer, d_I, (dirac_ao_num,2) ]
 implicit none
 BEGIN_DOC
 ! d_L = dirac_List mapping between the real index of the dirac_ao_num AOs and 
 ! the (2*dirac_ao_num)*(2*dirac_ao_num) positions in the 
 ! dirac Fock matrix. d_I is the inverse mappin.
 END_DOC
 integer   ::     i
 do i = 1, 2*dirac_ao_num
  if (i .le. large_ao_num) then
   d_L(i) = i
  elseif (i .gt. large_ao_num .and. i .le. (2*large_ao_num)) then
   d_L(i) = i - large_ao_num
  elseif (i .gt. (2*large_ao_num) .and. i .le. (2*large_ao_num + small_ao_num)) then
   d_L(i) = i - large_ao_num
  elseif (i .gt. (2*large_ao_num + small_ao_num)) then
   d_L(i) = i - (large_ao_num + small_ao_num)
  endif
 enddo
 do i = 1, dirac_ao_num
  if (i .le. large_ao_num) then
   d_I(i,1) = i 
   d_I(i,2) = i + large_ao_num
  elseif (i .gt. large_ao_num) then
   d_I(i,1) = i + large_ao_num
   d_I(i,2) = i + (large_ao_num + small_ao_num) 
  endif
 enddo
 END_PROVIDER
