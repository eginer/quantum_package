program DFT_Utils_ECMD
  implicit none
  BEGIN_DOC
! TODO
  END_DOC
  read_wf = .True.
  touch read_wf
  call routine
end

subroutine routine
  implicit none
  print*,'Energy_c_md_on_top = ',Energy_c_md_on_top
end
