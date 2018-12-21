 BEGIN_PROVIDER [ logical, read_ao_integrals_erf ]
&BEGIN_PROVIDER [ logical, write_ao_integrals_erf ]
   implicit none
   
   BEGIN_DOC
   ! Flag to read or write the |AO| erf integrals
   END_DOC
   
   if (disk_access_ao_integrals_erf.EQ.'Read') then
     read_ao_integrals_erf =  .True.
     write_ao_integrals_erf = .False.
     
   else if  (disk_access_ao_integrals_erf.EQ.'Write') then
     read_ao_integrals_erf = .False.
     write_ao_integrals_erf =  .True.
     
   else if (disk_access_ao_integrals_erf.EQ.'None') then
     read_ao_integrals_erf = .False.
     write_ao_integrals_erf = .False.
     
   else
     print *, 'disk_access_ao_integrals_erf has a wrong type'
     stop 1
     
   endif
   
END_PROVIDER
