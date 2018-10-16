program pouet
 implicit none
 integer :: i,j,k,l
 double precision, external :: get_mo_bielec_integral
 read_wf = .True.
 TOUCH read_wf

  double precision :: e(10)
  e = 0.d0

 print *,  '1RDM ALPHA'
 do i=1,mo_tot_num
  do j=1,mo_tot_num
   print *,  i, j, one_body_dm_mo_alpha(i,j,1) 
   e(4) += one_body_dm_mo_alpha(i,j,1) * mo_mono_elec_integral(i,j)
  enddo
 enddo

 print *,  '1RDM BETA'
 do i=1,mo_tot_num
  do j=1,mo_tot_num
   print *,  i, j, one_body_dm_mo_beta(i,j,1) 
   e(4) += one_body_dm_mo_beta(i,j,1) * mo_mono_elec_integral(i,j)
  enddo
 enddo

 print *,  '2RDM ALPHA ALPHA'
 do i=1,mo_tot_num
   do j=1,mo_tot_num
     do k=1,mo_tot_num
       do l=1,mo_tot_num
         print *,  i, j, k, l, two_body_dm_aa(i,j,k,l)
         e(1) += two_body_dm_aa(i,j,k,l) * get_mo_bielec_integral(i,j,k,l, mo_integrals_map)
       enddo
     enddo
   enddo
 enddo

 print *,  '2RDM BETA BETA'
 do i=1,mo_tot_num
   do j=1,mo_tot_num
     do k=1,mo_tot_num
       do l=1,mo_tot_num
         print *,  i, j, k, l, two_body_dm_bb(i,j,k,l)
         e(2) += two_body_dm_bb(i,j,k,l) * get_mo_bielec_integral(i,j,k,l, mo_integrals_map)
       enddo
     enddo
   enddo
 enddo

 print *,  '2RDM ALPHA BETA'
 do i=1,mo_tot_num
   do j=1,mo_tot_num
     do k=1,mo_tot_num
       do l=1,mo_tot_num
         print *,  i, j, k, l, two_body_dm_ab(i,j,k,l)
         e(3) += two_body_dm_ab(i,j,k,l) * get_mo_bielec_integral(i,j,k,l, mo_integrals_map)
       enddo
     enddo
   enddo
 enddo

 print *,  ''
 print *,  'Energy ', sum(e(1:4)) + nuclear_repulsion


end
