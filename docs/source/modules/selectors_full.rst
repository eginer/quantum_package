.. _selectors_full:

.. program:: selectors_full

.. default-role:: option

==============
Selectors_full
==============

All the determinants are possible selectors. Only the largest contributions are kept, where
a threshold is applied to the squared norm of the wave function, with the :option:`determinants
threshold_selectors` flag.



Providers
---------


.. c:var:: n_det_selectors

    .. code:: text

        integer	:: n_det_selectors

    File: :file:`selectors.irp.f`

    For Single reference wave functions, the number of selectors is 1 : the Hartree-Fock determinant




.. c:var:: psi_selectors

    .. code:: text

        integer(bit_kind), allocatable	:: psi_selectors	(N_int,2,psi_selectors_size)
        double precision, allocatable	:: psi_selectors_coef	(psi_selectors_size,N_states)

    File: :file:`selectors.irp.f`

    Determinants on which we apply <i|H|psi> for perturbation.




.. c:var:: psi_selectors_coef

    .. code:: text

        integer(bit_kind), allocatable	:: psi_selectors	(N_int,2,psi_selectors_size)
        double precision, allocatable	:: psi_selectors_coef	(psi_selectors_size,N_states)

    File: :file:`selectors.irp.f`

    Determinants on which we apply <i|H|psi> for perturbation.




.. c:var:: threshold_selectors

    .. code:: text

        double precision	:: threshold_selectors

    File: :file:`selectors.irp.f`

    Thresholds on selectors (fraction of the square of the norm)


