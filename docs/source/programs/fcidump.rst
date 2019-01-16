.. _.fcidump.: 
 
.. program:: fcidump 
 
======= 
fcidump 
======= 
 
 
Produce a regular FCIDUMP file from the |MOs| stored in the |EZFIO| folder. 

 To specify an active space, the class of the mos have to set in the |EZFIO| folder (see :ref:`qp_set_mo_class`). 

 The fcidump program supports 3 types of MO_class : 

 * the "core" orbitals which are always doubly occupied in the calculation 

 * the "del" orbitals that are never occupied in the calculation 

 * the "act" orbitals that will be occupied by a varying number of electrons 
 
File: :file:`tools/fcidump.irp.f`