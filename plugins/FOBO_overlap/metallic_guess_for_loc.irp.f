BEGIN_PROVIDER [double precision, mo_coef_metallic_guess, (ao_num,n_act_orb)]
 implicit none
 BEGIN_DOC
 ! atomic guess for active orbitals
 ! each guess is attached to a given metallic atomic center
 ! 
 END_DOC
 integer :: i,i_atom,j,k,i_act,m
 mo_coef_metallic_guess = 0.d0
 do i = 1, n_metal_atoms
  i_atom = index_metal_atoms(i) 
  do j = 1, Nucl_N_Aos(i_atom) ! you run on the AO attached to each metallic atoms 
   m = Nucl_Aos_transposed(j,i_atom) ! m = AO attached to the jth AO of the i_atom metalic atom 
   i_act = list_act(i)
   mo_coef_metallic_guess(m,i) = mo_coef(m,i_act)
  enddo
 enddo
 
 double precision :: accu
 do i = 1, n_act_orb
  accu = 0.d0
  do j = 1, ao_num 
   print*,j,mo_coef_metallic_guess(j,i)
   do k = 1, ao_num
    accu += mo_coef_metallic_guess(k,i) * mo_coef_metallic_guess(j,i) * ao_overlap(j,k)
   enddo
  enddo
  accu = 1.d0/dsqrt(accu)
  do j = 1, ao_num
   mo_coef_metallic_guess(j,i) = mo_coef_metallic_guess(j,i) * accu 
  enddo
 enddo

END_PROVIDER 


