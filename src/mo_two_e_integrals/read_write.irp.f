 BEGIN_PROVIDER [ logical, read_mo_integrals ]
&BEGIN_PROVIDER [ logical, write_mo_integrals ]
   
   BEGIN_DOC
   ! Flag to read or write the |MO| integrals
   END_DOC
   implicit none
   
   if (disk_access_mo_integrals.EQ.'Read') then
     read_mo_integrals =  .True.
     write_mo_integrals = .False.
     
   else if  (disk_access_mo_integrals.EQ.'Write') then
     read_mo_integrals = .False.
     write_mo_integrals =  .True.
     
   else if (disk_access_mo_integrals.EQ.'None') then
     read_mo_integrals = .False.
     write_mo_integrals = .False.
     
   else
     print *, 'disk_access_mo_integrals has a wrong type'
     stop 1
     
   endif
   
END_PROVIDER
