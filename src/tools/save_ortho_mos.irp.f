program save_ortho_mos
  implicit none
  BEGIN_DOC
  ! Save orthonormalized MOs in the EZFIO.
  END_DOC
  call orthonormalize_mos
  call save_mos
end
