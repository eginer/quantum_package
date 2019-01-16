.. _.save_ortho_mos.: 
 
.. program:: save_ortho_mos 
 
============== 
save_ortho_mos 
============== 
 
 
Save orthonormalized MOs in the EZFIO. 

 This program reads the current MOs, computes the corresponding overlap matrix in the MO basis 

 and perform a Lowdin orthonormalization : :math:`MO_{new} = S^{-1/2} MO_{guess}`. 

 Thanks to the Lowdin orthonormalization, the new MOs are the most similar to the guess MOs. 
 
File: :file:`tools/save_ortho_mos.irp.f`