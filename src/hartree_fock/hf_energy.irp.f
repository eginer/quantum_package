BEGIN_PROVIDER [double precision, extra_energy_contrib_from_density]
 implicit none
 extra_energy_contrib_from_density = 0.D0

END_PROVIDER 

 BEGIN_PROVIDER [ double precision, HF_energy]
&BEGIN_PROVIDER [ double precision, HF_two_electron_energy]
&BEGIN_PROVIDER [ double precision, HF_one_electron_energy]
 implicit none
 integer :: i,j 
 HF_energy = nuclear_repulsion
 do j=1,ao_num
   do i=1,ao_num
    HF_two_electron_energy += 0.5d0 * ( ao_bi_elec_integral_alpha(i,j) * SCF_density_matrix_ao_alpha(i,j) &
                                       +ao_bi_elec_integral_beta(i,j)  * SCF_density_matrix_ao_beta(i,j) )
    HF_one_electron_energy += ao_mono_elec_integral(i,j) * (SCF_density_matrix_ao_alpha(i,j) + SCF_density_matrix_ao_beta (i,j) )
   enddo
 enddo
 HF_energy += HF_two_electron_energy + HF_one_electron_energy
END_PROVIDER 

