.. _tools:

.. program:: tools

.. default-role:: option

=====
tools
=====

Useful tools are grouped in this module.



Subroutines / functions
-----------------------



.. c:function:: diagonalize_h

    .. code:: text

        subroutine diagonalize_h

    File: :file:`diagonalize_h.irp.f`

    program that extracts the N_states lowest states of the Hamiltonian within the set of Slater determinants stored in the EZFIO folder





.. c:function:: fcidump

    .. code:: text

        subroutine fcidump

    File: :file:`fcidump.irp.f`

    Produce a FCIDUMP file





.. c:function:: four_idx_transform

    .. code:: text

        subroutine four_idx_transform

    File: :file:`four_idx_transform.irp.f`

    4-index transformation of two-electron integrals from AO to MO integrals





.. c:function:: molden

    .. code:: text

        subroutine molden

    File: :file:`molden.irp.f`

    Produce a Molden file





.. c:function:: print_e_conv

    .. code:: text

        subroutine print_e_conv

    File: :file:`print_e_conv.irp.f`

    program that prints in a human readable format the convergence of the CIPSI algorithm





.. c:function:: print_wf

    .. code:: text

        subroutine print_wf

    File: :file:`print_wf.irp.f`

    print the wave function stored in the EZFIO folder in the intermediate normalization 

    it also prints a lot of information regarding the excitation operators from the reference determinant 

    and a first-order perturbative analysis of the wave function. 

    If the wave function strongly deviates from the first-order analysis, something funny is going on :)





.. c:function:: routine

    .. code:: text

        subroutine routine

    File: :file:`write_integrals_erf.irp.f`

    





.. c:function:: save_natorb

    .. code:: text

        subroutine save_natorb

    File: :file:`save_natorb.irp.f`

    Save natural MOs into the EZFIO





.. c:function:: save_one_body_dm

    .. code:: text

        subroutine save_one_body_dm

    File: :file:`save_one_body_dm.irp.f`

    programs that computes the one body density on the mo basis for alpha and beta electrons from the wave function stored in the EZFIO folder, and then save it into the EZFIO folder aux_quantities. 

    Then, the global variable data_one_e_dm_alpha_mo and data_one_e_dm_beta_mo will automatically read the density in a further calculation. 

    This can be used to perform dampin on the density in RS-DFT calculation (see the density_for_dft module).





.. c:function:: save_one_e_dm

    .. code:: text

        subroutine save_one_e_dm

    File: :file:`save_one_e_dm.irp.f`

    programs that computes the one body density on the mo basis for alpha and beta electrons from the wave function stored in the EZFIO folder, and then save it into the EZFIO folder aux_quantities. 

    Then, the global variable data_one_e_dm_alpha_mo and data_one_e_dm_beta_mo will automatically read the density in a further calculation. 

    This can be used to perform dampin on the density in RS-DFT calculation (see the density_for_dft module).





.. c:function:: save_ortho_mos

    .. code:: text

        subroutine save_ortho_mos

    File: :file:`save_ortho_mos.irp.f`

    Save orthonormalized MOs in the EZFIO.





.. c:function:: write_ao_basis

    .. code:: text

        subroutine write_Ao_basis(i_unit_output)

    File: :file:`molden.irp.f`

    





.. c:function:: write_geometry

    .. code:: text

        subroutine write_geometry(i_unit_output)

    File: :file:`molden.irp.f`

    





.. c:function:: write_integrals

    .. code:: text

        subroutine write_integrals

    File: :file:`write_integrals_erf.irp.f`

    Saves the two-electron erf integrals into the EZFIO





.. c:function:: write_intro_gamess

    .. code:: text

        subroutine write_intro_gamess(i_unit_output)

    File: :file:`molden.irp.f`

    





.. c:function:: write_mo_basis

    .. code:: text

        subroutine write_Mo_basis(i_unit_output)

    File: :file:`molden.irp.f`

    


