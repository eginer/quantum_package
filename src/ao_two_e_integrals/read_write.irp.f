 BEGIN_PROVIDER [ logical, read_ao_integrals ]
&BEGIN_PROVIDER [ logical, write_ao_integrals ]
   
   BEGIN_DOC
   ! Flag to read or write the |AO| integrals
   END_DOC
   implicit none
   
   if (disk_access_ao_integrals.EQ.'Read') then
     read_ao_integrals =  .True.
     write_ao_integrals = .False.
     
   else if  (disk_access_ao_integrals.EQ.'Write') then
     read_ao_integrals = .False.
     write_ao_integrals =  .True.
     
   else if (disk_access_ao_integrals.EQ.'None') then
     read_ao_integrals = .False.
     write_ao_integrals = .False.
     
   else
     print *, 'disk_access_ao_integrals has a wrong type'
     stop 1
     
   endif
   
END_PROVIDER
