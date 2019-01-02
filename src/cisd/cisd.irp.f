program cisd
  implicit none
  BEGIN_DOC
! Configuration Interaction with Single and Double excitations.
  END_DOC
  read_wf = .False.
  SOFT_TOUCH read_wf
  call run
end

subroutine run
  implicit none
  integer :: i

  call H_apply_cisd
  print *,  'N_det = ', N_det
  do i = 1,N_states
   print *,  'energy  = ',CI_energy(i), &
             'E_corr  = ',CI_electronic_energy(i) - ref_bitmask_energy
  enddo
  psi_coef = ci_eigenvectors
  SOFT_TOUCH psi_coef
  call save_wavefunction_truncated(1.d-12)
  call ezfio_set_cisd_energy(CI_energy)

end
