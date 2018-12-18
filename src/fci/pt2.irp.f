program pt2
  implicit none
  BEGIN_DOC
  ! Second order perturbative correction to the wave function contained in the
  ! EZFIO directory.
  END_DOC
  read_wf = .True.
  SOFT_TOUCH read_wf
  PROVIDE mo_bielec_integrals_in_map
  PROVIDE psi_energy
  call run
end

subroutine run
  implicit none
  integer                        :: i,j,k
  logical, external              :: detEq
  
  double precision               :: pt2(N_states)
  integer                        :: degree
  integer                        :: n_det_before, to_select
  double precision               :: threshold_davidson_in
  
  double precision               :: E_CI_before(N_states), relative_error, error(N_states), variance(N_states), norm(N_states), rpt2(N_states)
  
  pt2(:) = 0.d0
  
  E_CI_before(:) = psi_energy(:) + nuclear_repulsion
  threshold_selectors = 1.d0
  threshold_generators = 1.d0
  relative_error=PT2_relative_error
  
  call ZMQ_pt2(psi_energy_with_nucl_rep,pt2,relative_error,error, variance, norm) ! Stochastic PT2
  do k=1,N_states
    rpt2(:) = pt2(:)/(1.d0 + norm(k)) 
  enddo

  call print_summary(psi_energy_with_nucl_rep(1:N_states),pt2,error,variance,norm)

  call ezfio_set_fci_energy(E_CI_before)
  call ezfio_set_fci_energy_pt2(E_CI_before+pt2)
end


