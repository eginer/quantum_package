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
  print*,'******************************'
  print *,  'Energies  of the states:'
  do i = 1,N_states
    print *,  i, CI_energy(i)
  enddo
  if (N_states > 1) then
    print*,'******************************'
    print*,'Excitation energies '
    do i = 2, N_states
      print*, i ,CI_energy(i) - CI_energy(1)
    enddo
  endif
  psi_coef = ci_eigenvectors
  SOFT_TOUCH psi_coef
  call save_wavefunction
  call ezfio_set_cisd_energy(CI_energy)

end
