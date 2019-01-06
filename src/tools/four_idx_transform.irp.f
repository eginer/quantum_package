program four_idx_transform
  implicit none
  BEGIN_DOC
! 4-index transformation of two-electron integrals from AO to MO integrals
  END_DOC
  
  io_mo_two_e_integrals = 'Write'
  SOFT_TOUCH io_mo_two_e_integrals
  if (.true.) then
    PROVIDE mo_two_e_integrals_in_map
  endif
end
