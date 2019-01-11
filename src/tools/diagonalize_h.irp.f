program diagonalize_h
 implicit none
 BEGIN_DOC
! program that extracts the `n_states` lowest states of the Hamiltonian within the set of Slater determinants stored in the EZFIO folder
 END_DOC
 read_wf = .True.
 touch read_wf
 call routine
end

subroutine routine
 implicit none
 call diagonalize_CI
 print*,'N_det = ',N_det
 call save_wavefunction_general(N_det,N_states,psi_det_sorted,size(psi_coef_sorted,1),psi_coef_sorted)
end
