program write_integrals
 implicit none
 BEGIN_DOC
 ! Saves the bielec erf integrals into the EZFIO 
 END_DOC 
 io_mo_two_e_integrals = 'None'
 touch io_mo_two_e_integrals
 io_ao_two_e_integrals = 'None'
 touch io_ao_two_e_integrals
 call routine

end

subroutine routine
 implicit none
 call save_erf_bi_elec_integrals_ao
 call save_erf_bi_elec_integrals_mo

end

