 use bitmasks
 BEGIN_PROVIDER [ double precision, two_body_dm_aa, (mo_tot_num,mo_tot_num,mo_tot_num,mo_tot_num) ]
&BEGIN_PROVIDER [ double precision, two_body_dm_bb, (mo_tot_num,mo_tot_num,mo_tot_num,mo_tot_num) ]
&BEGIN_PROVIDER [ double precision, two_body_dm_ab, (mo_tot_num,mo_tot_num,mo_tot_num,mo_tot_num) ]
   implicit none
   use bitmasks
   BEGIN_DOC
   ! Temporary files for 2-body dm calculation
   END_DOC
   integer                        :: getUnitAndOpen
   
   ! Compute two body DM in file
   integer                        :: k,l,degree, idx,i,j
   integer                        :: exc(0:2,2,2),n_occ_alpha
   double precision               :: phase, coef
   integer                        :: h1,h2,p1,p2,s1,s2, e1, e2
   double precision               :: ck, cl
   character*(128), parameter     :: f = '(i8,4(x,i5),x,d16.8)'
   integer :: istate

   two_body_dm_aa = 0.d0
   two_body_dm_ab = 0.d0
   two_body_dm_bb = 0.d0

   istate = 1
   ! OMP PARALLEL DEFAULT(SHARED) PRIVATE(k,ck,ckl,i,j,e1,e2,cl,phase,h1,p1,h2,p2,s1,s2,occ)
   ! OMP DO SCHEDULE(dynamic,64)
   do k=1,N_det
     ck = psi_coef(k,istate)
     call bitstring_to_list(psi_det(1,1,k), occ(1,1), n_occ_alpha, N_int)
     call bitstring_to_list(psi_det(1,2,k), occ(1,2), n_occ_alpha, N_int)
     ckl = psi_coef(k,istate) * psi_coef(k,istate)
     do i = 1,elec_alpha_num
       e1=occ(i,1)
       do j = 1,elec_alpha_num
         e2=occ(j,1)
         ! alpha-alpha
         two_body_dm_aa(e1,e2,e1,e2) += 0.5d0*ckl
         two_body_dm_aa(e1,e2,e2,e1) -= 0.5d0*ckl
       enddo
       do j = 1,elec_beta_num
         e2=occ(j,2)
         ! alpha-beta
         two_body_dm_ab(e1,e2,e1,e2) += ckl
       enddo
     enddo
     do i = 1,elec_beta_num
       e1=occ(i,2)
       do j = 1,elec_beta_num
         e2=occ(j,2)
         ! beta-beta
         two_body_dm_bb(e1,e2,e1,e2) += 0.5d0*ckl
         two_body_dm_bb(e1,e2,e2,e1) -= 0.5d0*ckl
       enddo
     enddo
     
     do l=1,k-1
       cl = 2.d0*psi_coef(l,istate)
       call get_excitation_degree(psi_det(1,1,k),psi_det(1,1,l),degree,N_int)
       if (degree == 2) then
         call get_double_excitation(psi_det(1,1,k),psi_det(1,1,l),exc,phase,N_int)
         call decode_exc(exc,degree,h1,p1,h2,p2,s1,s2)
         ckl = phase*ck*cl
         select case (s1+s2)
           case(2) ! alpha alpha
             two_body_dm_aa(h1,h2,p1,p2) += ckl
             two_body_dm_aa(h1,h2,p2,p1) -= ckl
           case(3) ! alpha beta
             two_body_dm_ab(h1,h2,p1,p2) += ckl
           case(4) ! beta beta
             two_body_dm_bb(h1,h2,p1,p2) += ckl
             two_body_dm_bb(h1,h2,p2,p1) -= ckl
         end select
       else if (degree == 1) then
         call get_mono_excitation(psi_det(1,1,k),psi_det(1,1,l),exc,phase,N_int)
         call decode_exc(exc,degree,h1,p1,h2,p2,s1,s2)
         double precision               :: ckl
         ckl = phase*ck*cl
         call bitstring_to_list(psi_det(1,1,k), occ(1,1), n_occ_alpha, N_int)
         call bitstring_to_list(psi_det(1,2,k), occ(1,2), n_occ_alpha, N_int)
         select case (s1)
           case (1)  ! Alpha single excitation
             integer                        :: occ(N_int*bit_kind_size,2)
             do i  = 1, elec_alpha_num
               p2=occ(i,1)
               h2=p2
               two_body_dm_aa(h1,h2,p1,p2) += ckl
               two_body_dm_aa(h1,h2,p2,p1) -= ckl
             enddo
             do i = 1, elec_beta_num
               p2=occ(i,2)
               h2=p2
               two_body_dm_ab(h1,h2,p1,p2) += ckl
             enddo
           case (2)  ! Beta single excitation
             do i  = 1, elec_alpha_num
               p2=occ(i,1)
               h2=p2
               two_body_dm_ab(h1,h2,p1,p2) += ckl
             enddo
             do i = 1, elec_beta_num
               p2=occ(i,2)
               h2=p2
               two_body_dm_bb(h1,h2,p1,p2) += ckl
               two_body_dm_bb(h1,h2,p2,p1) -= ckl
             enddo
         end select
       endif
     enddo
   enddo
   ! OMP END DO
   ! OMP END PARALLEL
   
END_PROVIDER
 
 
