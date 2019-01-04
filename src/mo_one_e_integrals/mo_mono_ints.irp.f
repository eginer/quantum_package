BEGIN_PROVIDER [ double precision, mo_mono_elec_integral,(mo_tot_num,mo_tot_num)]
  implicit none
  integer                        :: i,j,n,l
  BEGIN_DOC
  ! array of the mono electronic hamiltonian on the MOs basis :
  ! sum of the kinetic and nuclear electronic potential (and pseudo potential if needed)
  END_DOC
  print*,'Providing the mono electronic integrals'

  IF (read_mo_one_integrals) THEN
        call ezfio_get_mo_one_e_integrals_integral_combined(mo_mono_elec_integral)
  ELSE
      mo_mono_elec_integral  = mo_nucl_elec_integral + mo_kinetic_integral

      IF (DO_PSEUDO) THEN
            mo_mono_elec_integral  += mo_pseudo_integral
      ENDIF

  ENDIF

  IF (write_mo_one_integrals) THEN
        call ezfio_set_mo_one_e_integrals_integral_combined(mo_mono_elec_integral)
       print *,  'MO integrals combined written to disk'
  ENDIF

END_PROVIDER
