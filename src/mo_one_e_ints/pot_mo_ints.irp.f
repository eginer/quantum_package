BEGIN_PROVIDER [double precision, mo_nucl_elec_integrals, (mo_num,mo_num)]
 implicit none
 BEGIN_DOC
! Nucleus-electron interaction on the |MO| basis
 END_DOC

  if (read_mo_integrals_e_n) then
     call ezfio_get_mo_one_e_ints_mo_integrals_e_n(mo_nucl_elec_integrals)
    print *,  'MO N-e integrals read from disk'
  else
    call ao_to_mo(                                                   &
        ao_nucl_elec_integrals,                                       &
        size(ao_nucl_elec_integrals,1),                               &
        mo_nucl_elec_integrals,                                       &
        size(mo_nucl_elec_integrals,1)                                &
        )
  endif
  if (write_mo_integrals_e_n) then
     call ezfio_set_mo_one_e_ints_mo_integrals_e_n(mo_nucl_elec_integrals)
    print *,  'MO N-e integrals written to disk'
  endif

END_PROVIDER


BEGIN_PROVIDER [double precision, mo_nucl_elec_integrals_per_atom, (mo_num,mo_num,nucl_num)]
 implicit none
 BEGIN_DOC
! mo_nucl_elec_integrals_per_atom(i,j,k) =
! $\langle \phi_i| -\frac{1}{|r-R_k|} | \phi_j \rangle$.
! where R_k is the coordinate of the k-th nucleus.
 END_DOC

 integer :: k
 mo_nucl_elec_integrals_per_atom = 0.d0
 do k = 1, nucl_num 
   call ao_to_mo(                                                    &
       ao_nucl_elec_integrals_per_atom(1,1,k),                        &
       size(ao_nucl_elec_integrals_per_atom,1),                       &
       mo_nucl_elec_integrals_per_atom(1,1,k),                        &
       size(mo_nucl_elec_integrals_per_atom,1)                        &
       )
 enddo

END_PROVIDER

