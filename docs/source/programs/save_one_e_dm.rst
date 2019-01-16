.. _.save_one_e_dm.: 
 
.. program:: save_one_e_dm 
 
============= 
save_one_e_dm 
============= 
 
 
programs that computes the one body density on the mo basis for alpha and beta electrons from the wave function stored in the EZFIO folder, and then save it into the EZFIO folder aux_quantities. 

 Then, the global variable data_one_e_dm_alpha_mo and data_one_e_dm_beta_mo will automatically read this density in a further calculation. 

 This can be used to perform damping on the density in RS-DFT calculation (see the density_for_dft module). 
 
File: :file:`tools/save_one_e_dm.irp.f`