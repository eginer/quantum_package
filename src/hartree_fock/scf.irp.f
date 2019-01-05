program scf
  BEGIN_DOC
! Produce `Hartree_Fock` |MOs| 
!
! output: mo_basis.mo_num mo_basis.mo_label mo_basis.ao_md5 mo_basis.mo_coef mo_basis.mo_occ
!
! output: hartree_fock.energy
!
! optional: mo_basis.mo_coef
  END_DOC
  call create_guess
  call orthonormalize_mos
  call run
end

subroutine create_guess
  implicit none
  BEGIN_DOC
!   Create a MO guess if no MOs are present in the EZFIO directory
  END_DOC
  logical                        :: exists
  PROVIDE ezfio_filename
  call ezfio_has_mo_basis_mo_coef(exists)
  if (.not.exists) then
    if (mo_guess_type == "HCore") then
      mo_coef = ao_ortho_lowdin_coef
      TOUCH mo_coef
      mo_label = 'Guess'
      call mo_as_eigvectors_of_mo_matrix(mo_mono_elec_integrals,     &
          size(mo_mono_elec_integrals,1),                            &
          size(mo_mono_elec_integrals,2),                            &
          mo_label,1,.false.)
      SOFT_TOUCH mo_coef mo_label
    else if (mo_guess_type == "Huckel") then
      call huckel_guess
    else
      print *,  'Unrecognized MO guess type : '//mo_guess_type
      stop 1
    endif
  endif
end

subroutine run

  BEGIN_DOC
!   Run SCF calculation
  END_DOC

  use bitmasks
  implicit none

  integer                        :: i_it, i, j, k
   
  mo_label = "Orthonormalized"

  call Roothaan_Hall_SCF
  call ezfio_set_hartree_fock_energy(SCF_energy)
  
end


