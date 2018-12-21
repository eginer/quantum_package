program save_natorb
  implicit none
  BEGIN_DOC
! Save natural MOs into the EZFIO
  END_DOC
  read_wf = .True.
  touch read_wf
  call save_natural_mos
  call save_ref_determinant
  call ezfio_set_mo_two_e_integrals_disk_access_mo_integrals('None')
  call ezfio_set_mo_one_e_integrals_disk_access_mo_one_integrals('None')
end

