program two_body_density
  implicit none
  BEGIN_DOC
! TODO
  END_DOC
 read_wf = .True.
 touch read_wf
 call pouet
end
subroutine pouet 
!call  comparaison_manual_tensor
 provide E_cor_tot_manual_prov
 print*,'E_cor_tot_manual_prov = ',E_cor_tot_manual_prov
end
