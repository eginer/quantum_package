.. _bitmask:

.. program:: bitmask

.. default-role:: option

==============
Bitmask Module
==============

The central part of this module is the :file:`bitmasks_module.f90` file. It contains
the constants that will be used to define on which kind of integer the bitmasks
will be defined.

In the program, to represent a determinant as a pair of bitstrings,
the determinant should be defined as

.. code-block:: fortran

  use bitmasks
  integer(bit_kind)  :: determinant(N_int,2)


:file:`bitmasks_routines.irp.f` contains helper routines to manipulate bitmask, like
transforming a bit string to a list of integers for example.


`bit_kind_shift`, `bit_kind_size` and `bit_kind` are supposed to be consistent::

   2**bit_kind_shift = bit_kind_size
   bit_kind = bit_kind_size / 8






Providers
---------


.. c:var:: cas_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: cas_bitmask	(N_int,2,N_cas_bitmask)

    File: :file:`bitmasks.irp.f`

    Bitmasks for CAS reference determinants. (N_int, alpha/beta, CAS reference)




.. c:var:: closed_shell_ref_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: closed_shell_ref_bitmask	(N_int,2)

    File: :file:`bitmasks.irp.f`

    




.. c:var:: core_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: core_bitmask	(N_int,2)
        integer	:: n_core_orb

    File: :file:`bitmasks.irp.f`

    Core + deleted orbitals bitmask




.. c:var:: core_inact_act_bitmask_4

    .. code:: text

        integer(bit_kind), allocatable	:: core_inact_act_bitmask_4	(N_int,4)

    File: :file:`bitmasks.irp.f`

    




.. c:var:: core_inact_virt_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: inact_virt_bitmask	(N_int,2)
        integer(bit_kind), allocatable	:: core_inact_virt_bitmask	(N_int,2)

    File: :file:`bitmasks.irp.f`

    Reunion of the inactive and virtual bitmasks




.. c:var:: full_ijkl_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: full_ijkl_bitmask	(N_int)

    File: :file:`bitmasks.irp.f`

    Bitmask to include all possible MOs




.. c:var:: full_ijkl_bitmask_4

    .. code:: text

        integer(bit_kind), allocatable	:: full_ijkl_bitmask_4	(N_int,4)

    File: :file:`bitmasks.irp.f`

    




.. c:var:: generators_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: generators_bitmask	(N_int,2,6,N_generators_bitmask)

    File: :file:`bitmasks.irp.f`

    Bitmasks for generator determinants. (N_int, alpha/beta, hole/particle, generator). 
    3rd index is : 
    * 1 : hole     for single exc 
    * 2 : particle for single exc 
    * 3 : hole     for 1st exc of double 
    * 4 : particle for 1st exc of double 
    * 5 : hole     for 2nd exc of double 
    * 6 : particle for 2nd exc of double 





.. c:var:: generators_bitmask_restart

    .. code:: text

        integer(bit_kind), allocatable	:: generators_bitmask_restart	(N_int,2,6,N_generators_bitmask_restart)

    File: :file:`bitmasks.irp.f`

    Bitmasks for generator determinants. (N_int, alpha/beta, hole/particle, generator). 
    3rd index is : 
    * 1 : hole     for single exc 
    * 2 : particle for single exc 
    * 3 : hole     for 1st exc of double 
    * 4 : particle for 1st exc of double 
    * 5 : hole     for 2nd exc of double 
    * 6 : particle for 2nd exc of double 





.. c:var:: hf_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: hf_bitmask	(N_int,2)

    File: :file:`bitmasks.irp.f`

    Hartree Fock bit mask




.. c:var:: i_bitmask_gen

    .. code:: text

        integer	:: i_bitmask_gen

    File: :file:`bitmasks.irp.f`

    Current bitmask for the generators




.. c:var:: inact_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: inact_bitmask	(N_int,2)
        integer(bit_kind), allocatable	:: virt_bitmask	(N_int,2)
        integer	:: n_inact_orb
        integer	:: n_virt_orb

    File: :file:`bitmasks.irp.f`

    inact_bitmask : Bitmask of the inactive orbitals which are supposed to be doubly excited in post CAS methods n_inact_orb   : Number of inactive orbitals virt_bitmask  : Bitmaks of vritual orbitals which are supposed to be recieve electrons in post CAS methods n_virt_orb    : Number of virtual orbitals




.. c:var:: inact_virt_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: inact_virt_bitmask	(N_int,2)
        integer(bit_kind), allocatable	:: core_inact_virt_bitmask	(N_int,2)

    File: :file:`bitmasks.irp.f`

    Reunion of the inactive and virtual bitmasks




.. c:var:: index_holes_bitmask

    .. code:: text

        integer, allocatable	:: index_holes_bitmask	(3)

    File: :file:`modify_bitmasks.irp.f`

    Index of the holes in the generators_bitmasks




.. c:var:: index_particl_bitmask

    .. code:: text

        integer, allocatable	:: index_particl_bitmask	(3)

    File: :file:`modify_bitmasks.irp.f`

    Index of the holes in the generators_bitmasks




.. c:var:: list_act

    .. code:: text

        integer, allocatable	:: list_act	(n_act_orb)
        integer, allocatable	:: list_act_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    list_act(i) = index of the ith active orbital 
    list_act_reverse : reverse list of active orbitals list_act_reverse(i) = 0 ::> not an active list_act_reverse(i) = k ::> IS the kth active orbital




.. c:var:: list_act_reverse

    .. code:: text

        integer, allocatable	:: list_act	(n_act_orb)
        integer, allocatable	:: list_act_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    list_act(i) = index of the ith active orbital 
    list_act_reverse : reverse list of active orbitals list_act_reverse(i) = 0 ::> not an active list_act_reverse(i) = k ::> IS the kth active orbital




.. c:var:: list_core

    .. code:: text

        integer, allocatable	:: list_core	(n_core_orb)
        integer, allocatable	:: list_core_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    List of the core orbitals that are never excited in post CAS method




.. c:var:: list_core_inact

    .. code:: text

        integer, allocatable	:: list_core_inact	(n_core_inact_orb)
        integer, allocatable	:: list_core_inact_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    




.. c:var:: list_core_inact_act

    .. code:: text

        integer, allocatable	:: list_core_inact_act	(n_core_inact_act_orb)
        integer, allocatable	:: list_core_inact_act_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    




.. c:var:: list_core_inact_act_reverse

    .. code:: text

        integer, allocatable	:: list_core_inact_act	(n_core_inact_act_orb)
        integer, allocatable	:: list_core_inact_act_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    




.. c:var:: list_core_inact_reverse

    .. code:: text

        integer, allocatable	:: list_core_inact	(n_core_inact_orb)
        integer, allocatable	:: list_core_inact_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    




.. c:var:: list_core_reverse

    .. code:: text

        integer, allocatable	:: list_core	(n_core_orb)
        integer, allocatable	:: list_core_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    List of the core orbitals that are never excited in post CAS method




.. c:var:: list_inact

    .. code:: text

        integer, allocatable	:: list_inact	(n_inact_orb)
        integer, allocatable	:: list_virt	(n_virt_orb)
        integer, allocatable	:: list_inact_reverse	(mo_tot_num)
        integer, allocatable	:: list_virt_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    list_inact : List of the inactive orbitals which are supposed to be doubly excited in post CAS methods list_virt  : List of vritual orbitals which are supposed to be recieve electrons in post CAS methods list_inact_reverse : reverse list of inactive orbitals list_inact_reverse(i) = 0 ::> not an inactive list_inact_reverse(i) = k ::> IS the kth inactive list_virt_reverse : reverse list of virtual orbitals list_virt_reverse(i) = 0 ::> not an virtual list_virt_reverse(i) = k ::> IS the kth virtual




.. c:var:: list_inact_reverse

    .. code:: text

        integer, allocatable	:: list_inact	(n_inact_orb)
        integer, allocatable	:: list_virt	(n_virt_orb)
        integer, allocatable	:: list_inact_reverse	(mo_tot_num)
        integer, allocatable	:: list_virt_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    list_inact : List of the inactive orbitals which are supposed to be doubly excited in post CAS methods list_virt  : List of vritual orbitals which are supposed to be recieve electrons in post CAS methods list_inact_reverse : reverse list of inactive orbitals list_inact_reverse(i) = 0 ::> not an inactive list_inact_reverse(i) = k ::> IS the kth inactive list_virt_reverse : reverse list of virtual orbitals list_virt_reverse(i) = 0 ::> not an virtual list_virt_reverse(i) = k ::> IS the kth virtual




.. c:var:: list_virt

    .. code:: text

        integer, allocatable	:: list_inact	(n_inact_orb)
        integer, allocatable	:: list_virt	(n_virt_orb)
        integer, allocatable	:: list_inact_reverse	(mo_tot_num)
        integer, allocatable	:: list_virt_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    list_inact : List of the inactive orbitals which are supposed to be doubly excited in post CAS methods list_virt  : List of vritual orbitals which are supposed to be recieve electrons in post CAS methods list_inact_reverse : reverse list of inactive orbitals list_inact_reverse(i) = 0 ::> not an inactive list_inact_reverse(i) = k ::> IS the kth inactive list_virt_reverse : reverse list of virtual orbitals list_virt_reverse(i) = 0 ::> not an virtual list_virt_reverse(i) = k ::> IS the kth virtual




.. c:var:: list_virt_reverse

    .. code:: text

        integer, allocatable	:: list_inact	(n_inact_orb)
        integer, allocatable	:: list_virt	(n_virt_orb)
        integer, allocatable	:: list_inact_reverse	(mo_tot_num)
        integer, allocatable	:: list_virt_reverse	(mo_tot_num)

    File: :file:`bitmasks.irp.f`

    list_inact : List of the inactive orbitals which are supposed to be doubly excited in post CAS methods list_virt  : List of vritual orbitals which are supposed to be recieve electrons in post CAS methods list_inact_reverse : reverse list of inactive orbitals list_inact_reverse(i) = 0 ::> not an inactive list_inact_reverse(i) = k ::> IS the kth inactive list_virt_reverse : reverse list of virtual orbitals list_virt_reverse(i) = 0 ::> not an virtual list_virt_reverse(i) = k ::> IS the kth virtual




.. c:var:: mpi_bit_kind

    .. code:: text

        integer	:: mpi_bit_kind

    File: :file:`mpi.irp.f`

    MPI bit kind type




.. c:var:: n_act_orb

    .. code:: text

        integer	:: n_act_orb

    File: :file:`bitmasks.irp.f`

    number of active orbitals




.. c:var:: n_cas_bitmask

    .. code:: text

        integer	:: n_cas_bitmask

    File: :file:`bitmasks.irp.f`

    Number of bitmasks for CAS




.. c:var:: n_core_inact_act_orb

    .. code:: text

        integer(bit_kind), allocatable	:: reunion_of_core_inact_act_bitmask	(N_int,2)
        integer	:: n_core_inact_act_orb

    File: :file:`bitmasks.irp.f`

    Reunion of the core, inactive and active bitmasks




.. c:var:: n_core_inact_orb

    .. code:: text

        integer	:: n_core_inact_orb

    File: :file:`bitmasks.irp.f`

    




.. c:var:: n_core_orb

    .. code:: text

        integer(bit_kind), allocatable	:: core_bitmask	(N_int,2)
        integer	:: n_core_orb

    File: :file:`bitmasks.irp.f`

    Core + deleted orbitals bitmask




.. c:var:: n_core_orb_allocate

    .. code:: text

        integer	:: n_core_orb_allocate

    File: :file:`bitmasks.irp.f`

    




.. c:var:: n_generators_bitmask

    .. code:: text

        integer	:: n_generators_bitmask

    File: :file:`bitmasks.irp.f`

    Number of bitmasks for generators




.. c:var:: n_generators_bitmask_restart

    .. code:: text

        integer	:: n_generators_bitmask_restart

    File: :file:`bitmasks.irp.f`

    Number of bitmasks for generators




.. c:var:: n_inact_orb

    .. code:: text

        integer(bit_kind), allocatable	:: inact_bitmask	(N_int,2)
        integer(bit_kind), allocatable	:: virt_bitmask	(N_int,2)
        integer	:: n_inact_orb
        integer	:: n_virt_orb

    File: :file:`bitmasks.irp.f`

    inact_bitmask : Bitmask of the inactive orbitals which are supposed to be doubly excited in post CAS methods n_inact_orb   : Number of inactive orbitals virt_bitmask  : Bitmaks of vritual orbitals which are supposed to be recieve electrons in post CAS methods n_virt_orb    : Number of virtual orbitals




.. c:var:: n_inact_orb_allocate

    .. code:: text

        integer	:: n_inact_orb_allocate

    File: :file:`bitmasks.irp.f`

    




.. c:var:: n_int

    .. code:: text

        integer	:: n_int

    File: :file:`bitmasks.irp.f`

    Number of 64-bit integers needed to represent determinants as binary strings




.. c:var:: n_virt_orb

    .. code:: text

        integer(bit_kind), allocatable	:: inact_bitmask	(N_int,2)
        integer(bit_kind), allocatable	:: virt_bitmask	(N_int,2)
        integer	:: n_inact_orb
        integer	:: n_virt_orb

    File: :file:`bitmasks.irp.f`

    inact_bitmask : Bitmask of the inactive orbitals which are supposed to be doubly excited in post CAS methods n_inact_orb   : Number of inactive orbitals virt_bitmask  : Bitmaks of vritual orbitals which are supposed to be recieve electrons in post CAS methods n_virt_orb    : Number of virtual orbitals




.. c:var:: n_virt_orb_allocate

    .. code:: text

        integer	:: n_virt_orb_allocate

    File: :file:`bitmasks.irp.f`

    




.. c:var:: ref_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: ref_bitmask	(N_int,2)

    File: :file:`bitmasks.irp.f`

    Reference bit mask, used in Slater rules, chosen as Hartree-Fock bitmask




.. c:var:: reunion_of_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: reunion_of_bitmask	(N_int,2)

    File: :file:`bitmasks.irp.f`

    Reunion of the inactive, active and virtual bitmasks




.. c:var:: reunion_of_cas_inact_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: reunion_of_cas_inact_bitmask	(N_int,2)

    File: :file:`bitmasks.irp.f`

    Reunion of the inactive, active and virtual bitmasks




.. c:var:: reunion_of_core_inact_act_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: reunion_of_core_inact_act_bitmask	(N_int,2)
        integer	:: n_core_inact_act_orb

    File: :file:`bitmasks.irp.f`

    Reunion of the core, inactive and active bitmasks




.. c:var:: reunion_of_core_inact_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: reunion_of_core_inact_bitmask	(N_int,2)

    File: :file:`bitmasks.irp.f`

    Reunion of the core and inactive and virtual bitmasks




.. c:var:: unpaired_alpha_electrons

    .. code:: text

        integer(bit_kind), allocatable	:: unpaired_alpha_electrons	(N_int)

    File: :file:`bitmasks.irp.f`

    Bitmask reprenting the unpaired alpha electrons in the HF_bitmask




.. c:var:: virt_bitmask

    .. code:: text

        integer(bit_kind), allocatable	:: inact_bitmask	(N_int,2)
        integer(bit_kind), allocatable	:: virt_bitmask	(N_int,2)
        integer	:: n_inact_orb
        integer	:: n_virt_orb

    File: :file:`bitmasks.irp.f`

    inact_bitmask : Bitmask of the inactive orbitals which are supposed to be doubly excited in post CAS methods n_inact_orb   : Number of inactive orbitals virt_bitmask  : Bitmaks of vritual orbitals which are supposed to be recieve electrons in post CAS methods n_virt_orb    : Number of virtual orbitals




.. c:var:: virt_bitmask_4

    .. code:: text

        integer(bit_kind), allocatable	:: virt_bitmask_4	(N_int,4)

    File: :file:`bitmasks.irp.f`

    




Subroutines / functions
-----------------------



.. c:function:: bitstring_to_hexa

    .. code:: text

        subroutine bitstring_to_hexa( output, string, Nint )

    File: :file:`bitmasks_routines.irp.f`

    Transform a bit string to a string in hexadecimal format for printing





.. c:function:: bitstring_to_list

    .. code:: text

        subroutine bitstring_to_list( string, list, n_elements, Nint)

    File: :file:`bitmasks_routines.irp.f`

    Gives the inidices(+1) of the bits set to 1 in the bit string





.. c:function:: bitstring_to_str

    .. code:: text

        subroutine bitstring_to_str( output, string, Nint )

    File: :file:`bitmasks_routines.irp.f`

    Transform a bit string to a string for printing





.. c:function:: broadcast_chunks_bit_kind

    .. code:: text

        subroutine broadcast_chunks_bit_kind(A, LDA)

    File: :file:`mpi.irp.f`

    Broadcast with chunks of ~2GB





.. c:function:: clear_bit_to_integer

    .. code:: text

        subroutine clear_bit_to_integer(i_physical,key,Nint)

    File: :file:`bitmasks_routines.irp.f`

    set to 0 the bit number i_physical in the bitstring key





.. c:function:: debug_det

    .. code:: text

        subroutine debug_det(string,Nint)

    File: :file:`bitmasks_routines.irp.f`

    Subroutine to print the content of a determinant in '+-' notation and hexadecimal representation.





.. c:function:: debug_spindet

    .. code:: text

        subroutine debug_spindet(string,Nint)

    File: :file:`bitmasks_routines.irp.f`

    Subroutine to print the content of a determinant in '+-' notation and hexadecimal representation.





.. c:function:: example_bitmask

    .. code:: text

        subroutine example_bitmask

    File: :file:`example.irp.f`

    subroutine that illustrates the main features available in bitmask





.. c:function:: initialize_bitmask_to_restart_ones

    .. code:: text

        subroutine initialize_bitmask_to_restart_ones

    File: :file:`modify_bitmasks.irp.f`

    Initialization of the generators_bitmask to the restart bitmask





.. c:function:: is_a_1h

    .. code:: text

        logical function is_a_1h(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    





.. c:function:: is_a_1h1p

    .. code:: text

        logical function is_a_1h1p(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    





.. c:function:: is_a_1h2p

    .. code:: text

        logical function is_a_1h2p(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    





.. c:function:: is_a_1p

    .. code:: text

        logical function is_a_1p(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    





.. c:function:: is_a_2h

    .. code:: text

        logical function is_a_2h(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    





.. c:function:: is_a_2h1p

    .. code:: text

        logical function is_a_2h1p(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    





.. c:function:: is_a_2p

    .. code:: text

        logical function is_a_2p(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    





.. c:function:: is_a_two_holes_two_particles

    .. code:: text

        logical function is_a_two_holes_two_particles(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    logical function that returns True if the determinant 'key_in' belongs to the 2h-2p excitation class of the DDCI space this is calculated using the CAS_bitmask that defines the active orbital space, the inact_bitmasl that defines the inactive oribital space and the virt_bitmask that defines the virtual orbital space





.. c:function:: is_i_in_virtual

    .. code:: text

        logical function is_i_in_virtual(i)

    File: :file:`bitmask_cas_routines.irp.f`

    





.. c:function:: is_the_hole_in_det

    .. code:: text

        logical function is_the_hole_in_det(key_in,ispin,i_hole)

    File: :file:`find_hole.irp.f`

    





.. c:function:: is_the_particl_in_det

    .. code:: text

        logical function is_the_particl_in_det(key_in,ispin,i_particl)

    File: :file:`find_hole.irp.f`

    





.. c:function:: list_to_bitstring

    .. code:: text

        subroutine list_to_bitstring( string, list, n_elements, Nint)

    File: :file:`bitmasks_routines.irp.f`

    Returns the physical string "string(N_int,2)" from the array of occupations "list(N_int*bit_kind_size,2)





.. c:function:: modify_bitmasks_for_hole

    .. code:: text

        subroutine modify_bitmasks_for_hole(i_hole)

    File: :file:`modify_bitmasks.irp.f`

    modify the generators_bitmask in order that one can only excite the electrons occupying i_hole





.. c:function:: modify_bitmasks_for_hole_in_out

    .. code:: text

        subroutine modify_bitmasks_for_hole_in_out(i_hole)

    File: :file:`modify_bitmasks.irp.f`

    modify the generators_bitmask in order that one can only excite the electrons occupying i_hole





.. c:function:: modify_bitmasks_for_particl

    .. code:: text

        subroutine modify_bitmasks_for_particl(i_part)

    File: :file:`modify_bitmasks.irp.f`

    modify the generators_bitmask in order that one can only excite the electrons to the orbital i_part





.. c:function:: number_of_holes

    .. code:: text

        integer function number_of_holes(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    Function that returns the number of holes in the inact space





.. c:function:: number_of_holes_verbose

    .. code:: text

        integer function number_of_holes_verbose(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    function that returns the number of holes in the inact space





.. c:function:: number_of_particles

    .. code:: text

        integer function number_of_particles(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    function that returns the number of particles in the virtual space





.. c:function:: number_of_particles_verbose

    .. code:: text

        integer function number_of_particles_verbose(key_in)

    File: :file:`bitmask_cas_routines.irp.f`

    function that returns the number of particles in the inact space





.. c:function:: print_det

    .. code:: text

        subroutine print_det(string,Nint)

    File: :file:`bitmasks_routines.irp.f`

    Subroutine to print the content of a determinant using the '+-' notation





.. c:function:: print_generators_bitmasks_holes

    .. code:: text

        subroutine print_generators_bitmasks_holes

    File: :file:`modify_bitmasks.irp.f`

    





.. c:function:: print_generators_bitmasks_holes_for_one_generator

    .. code:: text

        subroutine print_generators_bitmasks_holes_for_one_generator(i_gen)

    File: :file:`modify_bitmasks.irp.f`

    





.. c:function:: print_generators_bitmasks_particles

    .. code:: text

        subroutine print_generators_bitmasks_particles

    File: :file:`modify_bitmasks.irp.f`

    





.. c:function:: print_generators_bitmasks_particles_for_one_generator

    .. code:: text

        subroutine print_generators_bitmasks_particles_for_one_generator(i_gen)

    File: :file:`modify_bitmasks.irp.f`

    





.. c:function:: print_spindet

    .. code:: text

        subroutine print_spindet(string,Nint)

    File: :file:`bitmasks_routines.irp.f`

    Subroutine to print the content of a determinant using the '+-' notation





.. c:function:: set_bit_to_integer

    .. code:: text

        subroutine set_bit_to_integer(i_physical,key,Nint)

    File: :file:`bitmasks_routines.irp.f`

    set to 1 the bit number i_physical in the bitstring key





.. c:function:: set_bitmask_hole_as_input

    .. code:: text

        subroutine set_bitmask_hole_as_input(input_bimask)

    File: :file:`modify_bitmasks.irp.f`

    set the generators_bitmask for the holes as the input_bimask





.. c:function:: set_bitmask_particl_as_input

    .. code:: text

        subroutine set_bitmask_particl_as_input(input_bimask)

    File: :file:`modify_bitmasks.irp.f`

    set the generators_bitmask for the particles as the input_bimask


