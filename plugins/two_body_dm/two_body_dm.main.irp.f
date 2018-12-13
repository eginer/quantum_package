program two_body_dm
  implicit none
  BEGIN_DOC
! TODO
  END_DOC
 read_wf = .True.
 touch read_wf
! call routine_print
 call comparaison_decomp_tensor
end

subroutine routine_print
 implicit none
  print*,'integral_on_top_of_r_approx_svd = ',integral_on_top_of_r_approx_svd

end


