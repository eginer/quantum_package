program save_one_body_dm
  implicit none
 BEGIN_DOC 
! programs that computes the one body density on the mo basis for alpha and beta electrons from the wave function stored in the EZFIO folder, and then save it into the EZFIO folder data_energy_and_density. 
! 
! Then, the global variable data_one_body_alpha_dm_mo and data_one_body_beta_dm_mo will automatically read the density in a further calculation. 
!
! This can be used to perform dampin on the density in RS-DFT calculation (see the density_for_dft module).
 END_DOC
  read_wf = .True.
  touch read_wf
  call routine

end

subroutine routine
 
 call ezfio_set_data_energy_and_density_data_one_body_alpha_dm_mo(one_body_dm_mo_alpha)
 call ezfio_set_data_energy_and_density_data_one_body_beta_dm_mo(one_body_dm_mo_beta)
end
