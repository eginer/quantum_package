.. _.save_natorb.: 
 
.. program:: save_natorb 
 
=========== 
save_natorb 
=========== 
 
 
Save natural MOs into the EZFIO 

 This program reads the wave function stored in the EZFIO folder, 

 extracts the corresponding natural orbitals and set them as the new MOs 

 If this is a multi-state calculation, the density matrix that produces the natural orbitals 

 is obtained from a state-averaged of the density matrices of each state with the corresponding state_average_weight (see the doc of state_average_weight). 
 
File: :file:`tools/save_natorb.irp.f`