.. _generators_full: 
 
.. program:: generators_full 
 
.. default-role:: option 
 
===============
generators_full
===============

Module defining the generator determinants as all the determinants of the
variational space.

This module is intended to be included in the :file:`NEED` file to define
a full set of generators.
 
 
 
Providers 
--------- 
 

.. c:var:: degree_max_generators

    .. code:: text

        integer	:: degree_max_generators

    File: :file:`generators.irp.f`

    Max degree of excitation (respect to HF) of the generators


 

.. c:var:: n_det_generators

    .. code:: text

        integer	:: n_det_generators

    File: :file:`generators.irp.f`

    For Single reference wave functions, the number of generators is 1 : the Hartree-Fock determinant


 

.. c:var:: psi_coef_generators

    .. code:: text

        integer(bit_kind), allocatable	:: psi_det_generators	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_coef_generators	(psi_det_size,N_states)

    File: :file:`generators.irp.f`

    For Single reference wave functions, the generator is the Hartree-Fock determinant


 

.. c:var:: psi_coef_sorted_gen

    .. code:: text

        integer(bit_kind), allocatable	:: psi_det_sorted_gen	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_coef_sorted_gen	(psi_det_size,N_states)
        integer, allocatable	:: psi_det_sorted_gen_order	(psi_det_size)

    File: :file:`generators.irp.f`

    For Single reference wave functions, the generator is the Hartree-Fock determinant


 

.. c:var:: psi_det_generators

    .. code:: text

        integer(bit_kind), allocatable	:: psi_det_generators	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_coef_generators	(psi_det_size,N_states)

    File: :file:`generators.irp.f`

    For Single reference wave functions, the generator is the Hartree-Fock determinant


 

.. c:var:: psi_det_sorted_gen

    .. code:: text

        integer(bit_kind), allocatable	:: psi_det_sorted_gen	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_coef_sorted_gen	(psi_det_size,N_states)
        integer, allocatable	:: psi_det_sorted_gen_order	(psi_det_size)

    File: :file:`generators.irp.f`

    For Single reference wave functions, the generator is the Hartree-Fock determinant


 

.. c:var:: psi_det_sorted_gen_order

    .. code:: text

        integer(bit_kind), allocatable	:: psi_det_sorted_gen	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_coef_sorted_gen	(psi_det_size,N_states)
        integer, allocatable	:: psi_det_sorted_gen_order	(psi_det_size)

    File: :file:`generators.irp.f`

    For Single reference wave functions, the generator is the Hartree-Fock determinant


 

.. c:var:: select_max

    .. code:: text

        double precision, allocatable	:: select_max	(size_select_max)

    File: :file:`generators.irp.f`

    Memo to skip useless selectors


 

.. c:var:: size_select_max

    .. code:: text

        integer	:: size_select_max

    File: :file:`generators.irp.f`

    Size of the select_max array


