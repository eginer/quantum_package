 BEGIN_PROVIDER [ logical, read_ao_one_integrals ]
&BEGIN_PROVIDER [ logical, write_ao_one_integrals ]
   
   BEGIN_DOC
   ! If |true|, read/write one-electrons from/to disk.
   END_DOC
   implicit none
   
   if (disk_access_ao_one_integrals.EQ.'Read') then
     read_ao_one_integrals =  .True.
     write_ao_one_integrals = .False.
     
   else if  (disk_access_ao_one_integrals.EQ.'Write') then
     read_ao_one_integrals = .False.
     write_ao_one_integrals =  .True.
     
   else if (disk_access_ao_one_integrals.EQ.'None') then
     read_ao_one_integrals = .False.
     write_ao_one_integrals = .False.
     
   else
     print *, 'bielec_integrals/disk_access_ao_integrals has a wrong type'
     stop 1
     
   endif
   
END_PROVIDER

