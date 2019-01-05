BEGIN_PROVIDER [ double precision, mo_mono_elec_integrals,(mo_tot_num,mo_tot_num)]
  implicit none
  integer                        :: i,j,n,l
  BEGIN_DOC
  ! array of the mono electronic hamiltonian on the MOs basis :
  ! sum of the kinetic and nuclear electronic potential (and pseudo potential if needed)
  END_DOC
  print*,'Providing the mono electronic integrals'

  IF (read_mo_one_e_integrals) THEN
        call ezfio_get_mo_one_e_ints_mo_one_e_integrals(mo_mono_elec_integrals)
  ELSE
      mo_mono_elec_integrals  = mo_nucl_elec_integrals + mo_kinetic_integrals

      IF (DO_PSEUDO) THEN
            mo_mono_elec_integrals  += mo_pseudo_integrals
      ENDIF

  ENDIF

  IF (write_mo_one_e_integrals) THEN
        call ezfio_set_mo_one_e_ints_mo_one_e_integrals(mo_mono_elec_integrals)
       print *,  'MO one-e integrals written to disk'
  ENDIF

END_PROVIDER
