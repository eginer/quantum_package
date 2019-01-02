program cis
  implicit none
  BEGIN_DOC
! Configuration Interaction with Single excitations.
  END_DOC
  read_wf = .False.
  SOFT_TOUCH read_wf
  call run
end

subroutine run
  implicit none
  integer :: i

  call H_apply_cis
  print *,  'N_det = ', N_det
  print *,  'Energies  of the states:'
  do i = 1,N_states
   print *,  i, CI_energy(i) 
  enddo
  call ezfio_set_cis_energy(CI_energy)
  psi_coef = ci_eigenvectors
  SOFT_TOUCH psi_coef
  call save_wavefunction

end
