BEGIN_PROVIDER [double precision, mo_kinetic_integral, (mo_tot_num,mo_tot_num)]
  implicit none
  BEGIN_DOC
  !  Kinetic energy integrals in the MO basis
  END_DOC

  if (read_mo_one_integrals_kinetic) then
    call ezfio_get_mo_one_e_integrals_integral_kinetic(mo_kinetic_integral)
    print *,  'MO kinetic integrals read from disk'
  else
    call ao_to_mo(                                                   &
        ao_kinetic_integral,                                         &
        size(ao_kinetic_integral,1),                                 &
        mo_kinetic_integral,                                         &
        size(mo_kinetic_integral,1)                                  &
        )
  endif
  if (write_mo_one_integrals_kinetic) then
    call ezfio_set_mo_one_e_integrals_integral_kinetic(mo_kinetic_integral)
    print *,  'MO kinetic integrals written to disk'
  endif

END_PROVIDER

