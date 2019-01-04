 BEGIN_PROVIDER [ double precision, ao_mono_elec_integral,(ao_num,ao_num)]
&BEGIN_PROVIDER [ double precision, ao_mono_elec_integral_diag,(ao_num)]
  implicit none
  integer :: i,j,n,l
  BEGIN_DOC
 ! Array of the one-electron Hamiltonian on the |AO| basis.
  END_DOC
  
  IF (read_ao_one_integrals) THEN
     call ezfio_get_ao_one_e_integrals_integral_combined(ao_mono_elec_integral)
  ELSE
        ao_mono_elec_integral = ao_nucl_elec_integral + ao_kinetic_integral

        IF (DO_PSEUDO) THEN
              ao_mono_elec_integral  += ao_pseudo_integral
        ENDIF
  ENDIF

  DO j = 1, ao_num
    ao_mono_elec_integral_diag(j) = ao_mono_elec_integral(j,j)
  ENDDO

  IF (write_ao_one_integrals) THEN
       call ezfio_set_ao_one_e_integrals_integral_combined(ao_mono_elec_integral)
       print *,  'AO integrals combined written to disk'
  ENDIF
 
 END_PROVIDER

