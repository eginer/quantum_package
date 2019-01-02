.. _single_ref_method:

.. program:: single_ref_method

.. default-role:: option

=================
single_ref_method
=================

Include this module for single reference methods.
Using this module, the only generator determinant is the Hartree-Fock determinant.




Providers
---------


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




.. c:var:: psi_det_generators

    .. code:: text

        integer(bit_kind), allocatable	:: psi_det_generators	(N_int,2,psi_det_size)
        double precision, allocatable	:: psi_coef_generators	(psi_det_size,N_states)

    File: :file:`generators.irp.f`

    For Single reference wave functions, the generator is the Hartree-Fock determinant




.. c:var:: select_max

    .. code:: text

        double precision, allocatable	:: select_max	(1)

    File: :file:`generators.irp.f`

    Memo to skip useless selectors




.. c:var:: size_select_max

    .. code:: text

        integer	:: size_select_max

    File: :file:`generators.irp.f`

    Size of select_max


