.. _mrpt_utils:

.. program:: mrpt_utils

.. default-role:: option

==========
MRPT_Utils
==========

Subroutines and providers required for |MRPT|.



EZFIO parameters
----------------

.. option:: do_third_order_1h1p

    If `True`, compute the third order contribution for the 1h1p

    Default: True


Providers
---------


.. c:var:: apply_exc_to_psi

    .. code:: text

        subroutine apply_exc_to_psi(orb,hole_particle,spin_exc, &
        norm_out,psi_in_out,psi_in_out_coef, ndet,dim_psi_in,dim_psi_coef,N_states_in)

    File: :file:`excitations_cas.irp.f`

    apply a contracted excitation to psi_in_out whose coefficients are psi_in_out_coef hole_particle =  1  ===> creation     of an electron in psi_in_out = -1  ===> annhilation  of an electron in psi_in_out orb ===> is the index of orbital where you want wether to create or annhilate an electron spin_exc ===> is the spin of the electron (1 == alpha) (2 == beta) the wave function gets out normalized to unity 
    norm_out is the sum of the squared of the coefficients on which the excitation has been possible




.. c:var:: ci_dressed_pt2_new_eigenvectors

    .. code:: text

        double precision, allocatable	:: ci_electronic_dressed_pt2_new_energy	(N_states)
        double precision, allocatable	:: ci_dressed_pt2_new_eigenvectors	(N_det,N_states)
        double precision, allocatable	:: ci_dressed_pt2_new_eigenvectors_s2	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Eigenvectors/values of the CI matrix




.. c:var:: ci_dressed_pt2_new_eigenvectors_s2

    .. code:: text

        double precision, allocatable	:: ci_electronic_dressed_pt2_new_energy	(N_states)
        double precision, allocatable	:: ci_dressed_pt2_new_eigenvectors	(N_det,N_states)
        double precision, allocatable	:: ci_dressed_pt2_new_eigenvectors_s2	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Eigenvectors/values of the CI matrix




.. c:var:: ci_dressed_pt2_new_energy

    .. code:: text

        double precision, allocatable	:: ci_dressed_pt2_new_energy	(N_states)

    File: :file:`mrpt_utils.irp.f`

    N_states lowest eigenvalues of the CI matrix




.. c:var:: ci_electronic_dressed_pt2_new_energy

    .. code:: text

        double precision, allocatable	:: ci_electronic_dressed_pt2_new_energy	(N_states)
        double precision, allocatable	:: ci_dressed_pt2_new_eigenvectors	(N_det,N_states)
        double precision, allocatable	:: ci_dressed_pt2_new_eigenvectors_s2	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Eigenvectors/values of the CI matrix




.. c:var:: corr_e_from_1h1p

    .. code:: text

        double precision, allocatable	:: one_anhil_one_creat_inact_virt_bis	(n_inact_orb,n_virt_orb,N_det,N_States)
        double precision, allocatable	:: corr_e_from_1h1p	(N_States)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: delta_ij_mrpt

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: energy_cas_dyall

    .. code:: text

        double precision, allocatable	:: energy_cas_dyall	(N_states)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: energy_cas_dyall_no_exchange

    .. code:: text

        double precision, allocatable	:: energy_cas_dyall_no_exchange	(N_states)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: fock_core_inactive

    .. code:: text

        double precision, allocatable	:: fock_core_inactive	(mo_tot_num)

    File: :file:`fock_like_operators.irp.f`

    inactive part of the fock operator with contributions only from the inactive




.. c:var:: fock_core_inactive_from_act

    .. code:: text

        double precision, allocatable	:: fock_core_inactive_from_act	(mo_tot_num,2,N_states)

    File: :file:`fock_like_operators.irp.f`

    inactive part of the fock operator with contributions only from the active




.. c:var:: fock_core_inactive_total

    .. code:: text

        double precision, allocatable	:: fock_core_inactive_total	(mo_tot_num,2,N_states)
        double precision, allocatable	:: fock_core_inactive_total_spin_trace	(mo_tot_num,N_states)

    File: :file:`fock_like_operators.irp.f`

    inactive part of the fock operator




.. c:var:: fock_core_inactive_total_spin_trace

    .. code:: text

        double precision, allocatable	:: fock_core_inactive_total	(mo_tot_num,2,N_states)
        double precision, allocatable	:: fock_core_inactive_total_spin_trace	(mo_tot_num,N_states)

    File: :file:`fock_like_operators.irp.f`

    inactive part of the fock operator




.. c:var:: fock_operator_active_from_core_inact

    .. code:: text

        double precision, allocatable	:: fock_operator_active_from_core_inact	(mo_tot_num,mo_tot_num)

    File: :file:`fock_like_operators.irp.f`

    active part of the fock operator with contributions only from the inactive




.. c:var:: fock_virt_from_act

    .. code:: text

        double precision, allocatable	:: fock_virt_from_act	(mo_tot_num,2,N_states)

    File: :file:`fock_like_operators.irp.f`

    virtual part of the fock operator with contributions only from the active




.. c:var:: fock_virt_from_core_inact

    .. code:: text

        double precision, allocatable	:: fock_virt_from_core_inact	(mo_tot_num)

    File: :file:`fock_like_operators.irp.f`

    fock operator for the virtuals that comes from the doubly occupied orbitals




.. c:var:: fock_virt_total

    .. code:: text

        double precision, allocatable	:: fock_virt_total	(mo_tot_num,2,N_states)
        double precision, allocatable	:: fock_virt_total_spin_trace	(mo_tot_num,N_states)

    File: :file:`fock_like_operators.irp.f`

    inactive part of the fock operator




.. c:var:: fock_virt_total_spin_trace

    .. code:: text

        double precision, allocatable	:: fock_virt_total	(mo_tot_num,2,N_states)
        double precision, allocatable	:: fock_virt_total_spin_trace	(mo_tot_num,N_states)

    File: :file:`fock_like_operators.irp.f`

    inactive part of the fock operator




.. c:var:: gen_det_ref_idx

    .. code:: text

        integer(bit_kind), allocatable	:: gen_det_ref_sorted	(N_int,2,N_det_generators,2)
        integer, allocatable	:: gen_det_ref_shortcut	(0:N_det_generators,2)
        integer, allocatable	:: gen_det_ref_version	(N_int,N_det_generators,2)
        integer, allocatable	:: gen_det_ref_idx	(N_det_generators,2)

    File: :file:`mrpt_dress.irp.f`

    




.. c:var:: gen_det_ref_shortcut

    .. code:: text

        integer(bit_kind), allocatable	:: gen_det_ref_sorted	(N_int,2,N_det_generators,2)
        integer, allocatable	:: gen_det_ref_shortcut	(0:N_det_generators,2)
        integer, allocatable	:: gen_det_ref_version	(N_int,N_det_generators,2)
        integer, allocatable	:: gen_det_ref_idx	(N_det_generators,2)

    File: :file:`mrpt_dress.irp.f`

    




.. c:var:: gen_det_ref_sorted

    .. code:: text

        integer(bit_kind), allocatable	:: gen_det_ref_sorted	(N_int,2,N_det_generators,2)
        integer, allocatable	:: gen_det_ref_shortcut	(0:N_det_generators,2)
        integer, allocatable	:: gen_det_ref_version	(N_int,N_det_generators,2)
        integer, allocatable	:: gen_det_ref_idx	(N_det_generators,2)

    File: :file:`mrpt_dress.irp.f`

    




.. c:var:: gen_det_ref_version

    .. code:: text

        integer(bit_kind), allocatable	:: gen_det_ref_sorted	(N_int,2,N_det_generators,2)
        integer, allocatable	:: gen_det_ref_shortcut	(0:N_det_generators,2)
        integer, allocatable	:: gen_det_ref_version	(N_int,N_det_generators,2)
        integer, allocatable	:: gen_det_ref_idx	(N_det_generators,2)

    File: :file:`mrpt_dress.irp.f`

    




.. c:var:: give_holes_and_particles_in_active_space

    .. code:: text

        subroutine give_holes_and_particles_in_active_space(det_1,det_2,n_holes_spin,n_particles_spin,n_holes,n_particles,&
        holes_active_list,particles_active_list)

    File: :file:`psi_active_prov.irp.f`

    returns the holes and particles operators WITHIN THE ACTIVE SPACE that connect det_1 and det_2. By definition, the holes/particles are such that one starts from det_1 and goes to det_2 
    n_holes is the total number of holes n_particles is the total number of particles n_holes_spin is the number of number of holes per spin (1=alpha, 2=beta) n_particles_spin is the number of number of particles per spin (1=alpha, 2=beta) holes_active_list is the index of the holes per spin, that ranges from 1 to n_act_orb particles_active_list is the index of the particles per spin, that ranges from 1 to n_act_orb




.. c:var:: hmatrix_dressed_pt2_new

    .. code:: text

        double precision, allocatable	:: hmatrix_dressed_pt2_new	(N_det,N_det,N_states)

    File: :file:`mrpt_utils.irp.f`

    




.. c:var:: hmatrix_dressed_pt2_new_symmetrized

    .. code:: text

        double precision, allocatable	:: hmatrix_dressed_pt2_new_symmetrized	(N_det,N_det,N_states)

    File: :file:`mrpt_utils.irp.f`

    




.. c:var:: one_anhil

    .. code:: text

        double precision, allocatable	:: one_anhil	(n_act_orb,2,N_states)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: one_anhil_inact

    .. code:: text

        double precision, allocatable	:: one_anhil_inact	(n_inact_orb,n_act_orb,N_States)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: one_anhil_one_creat

    .. code:: text

        double precision, allocatable	:: one_anhil_one_creat	(n_act_orb,n_act_orb,2,2,N_States)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: one_anhil_one_creat_inact_virt

    .. code:: text

        double precision, allocatable	:: one_anhil_one_creat_inact_virt	(n_inact_orb,n_virt_orb,N_States)
        double precision, allocatable	:: one_anhil_one_creat_inact_virt_norm	(n_inact_orb,n_virt_orb,N_States,2)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: one_anhil_one_creat_inact_virt_bis

    .. code:: text

        double precision, allocatable	:: one_anhil_one_creat_inact_virt_bis	(n_inact_orb,n_virt_orb,N_det,N_States)
        double precision, allocatable	:: corr_e_from_1h1p	(N_States)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: one_anhil_one_creat_inact_virt_norm

    .. code:: text

        double precision, allocatable	:: one_anhil_one_creat_inact_virt	(n_inact_orb,n_virt_orb,N_States)
        double precision, allocatable	:: one_anhil_one_creat_inact_virt_norm	(n_inact_orb,n_virt_orb,N_States,2)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: one_creat

    .. code:: text

        double precision, allocatable	:: one_creat	(n_act_orb,2,N_states)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: one_creat_virt

    .. code:: text

        double precision, allocatable	:: one_creat_virt	(n_act_orb,n_virt_orb,N_States)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: psi_active

    .. code:: text

        integer(bit_kind), allocatable	:: psi_active	(N_int,2,psi_det_size)

    File: :file:`psi_active_prov.irp.f`

    active part of psi




.. c:var:: psi_ref_bis_lock

    .. code:: text

        integer(omp_lock_kind), allocatable	:: psi_ref_bis_lock	(psi_det_size)

    File: :file:`mrpt_dress.irp.f`

    Locks on ref determinants to fill delta_ij




.. c:var:: second_order_pt_new

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: second_order_pt_new_1h

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: second_order_pt_new_1h1p

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: second_order_pt_new_1h2p

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: second_order_pt_new_1p

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: second_order_pt_new_2h

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: second_order_pt_new_2h1p

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: second_order_pt_new_2h2p

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: second_order_pt_new_2p

    .. code:: text

        double precision, allocatable	:: delta_ij_mrpt	(N_det,N_det,N_states)
        double precision, allocatable	:: second_order_pt_new	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h	(N_states)
        double precision, allocatable	:: second_order_pt_new_1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h	(N_states)
        double precision, allocatable	:: second_order_pt_new_2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_1h2p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h1p	(N_states)
        double precision, allocatable	:: second_order_pt_new_2h2p	(N_states)

    File: :file:`mrpt_utils.irp.f`

    Dressing matrix in N_det basis




.. c:var:: three_anhil

    .. code:: text

        double precision, allocatable	:: three_anhil	(n_act_orb,n_act_orb,n_act_orb,2,2,2,N_states)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: three_creat

    .. code:: text

        double precision, allocatable	:: three_creat	(n_act_orb,n_act_orb,n_act_orb,2,2,2,N_states)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: two_anhil

    .. code:: text

        double precision, allocatable	:: two_anhil	(n_act_orb,n_act_orb,2,2,N_states)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: two_anhil_one_creat

    .. code:: text

        double precision, allocatable	:: two_anhil_one_creat	(n_act_orb,n_act_orb,n_act_orb,2,2,2,N_states)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: two_creat

    .. code:: text

        double precision, allocatable	:: two_creat	(n_act_orb,n_act_orb,2,2,N_states)

    File: :file:`energies_cas.irp.f`

    




.. c:var:: two_creat_one_anhil

    .. code:: text

        double precision, allocatable	:: two_creat_one_anhil	(n_act_orb,n_act_orb,n_act_orb,2,2,2,N_states)

    File: :file:`energies_cas.irp.f`

    




Subroutines / functions
-----------------------



.. c:function:: contrib_1h2p_dm_based

    .. code:: text

        subroutine contrib_1h2p_dm_based(accu)

    File: :file:`density_matrix_based.irp.f`

    





.. c:function:: contrib_2h1p_dm_based

    .. code:: text

        subroutine contrib_2h1p_dm_based(accu)

    File: :file:`density_matrix_based.irp.f`

    





.. c:function:: coulomb_value_no_check

    .. code:: text

        double precision function coulomb_value_no_check(det_in,Nint)

    File: :file:`excitations_cas.irp.f`

    Computes <i|H|i>





.. c:function:: diag_h_mat_elem_no_elec_check

    .. code:: text

        double precision function diag_H_mat_elem_no_elec_check(det_in,Nint)

    File: :file:`excitations_cas.irp.f`

    Computes <i|H|i>





.. c:function:: diag_h_mat_elem_no_elec_check_no_exchange

    .. code:: text

        double precision function diag_H_mat_elem_no_elec_check_no_exchange(det_in,Nint)

    File: :file:`excitations_cas.irp.f`

    Computes <i|H|i>





.. c:function:: find_connections_previous

    .. code:: text

        subroutine find_connections_previous(i_generator,n_selected,det_buffer,Nint,tq,N_tq,miniList,N_miniList)

    File: :file:`mrpt_dress.irp.f`

    





.. c:function:: get_delta_e_dyall

    .. code:: text

        subroutine get_delta_e_dyall(det_1,det_2,delta_e_final)

    File: :file:`psi_active_prov.irp.f`

    routine that returns the delta_e with the Moller Plesset and Dyall operators 
    with det_1 being a determinant from the cas, and det_2 being a perturber 
    Delta_e(det_1,det_2) = sum (hole) epsilon(hole) + sum(part) espilon(part) + delta_e(act) 
    where hole is necessary in the inactive, part necessary in the virtuals 
    and delta_e(act) is obtained from the contracted application of the excitation 
    operator in the active space that lead from det_1 to det_2





.. c:function:: get_delta_e_dyall_general_mp

    .. code:: text

        subroutine get_delta_e_dyall_general_mp(det_1,det_2,delta_e_final)

    File: :file:`psi_active_prov.irp.f`

    routine that returns the delta_e with the Moller Plesset and Dyall operators 
    with det_1 being a determinant from the cas, and det_2 being a perturber 
    Delta_e(det_1,det_2) = sum (hole) epsilon(hole) + sum(part) espilon(part) + delta_e(act) 
    where hole is necessary in the inactive, part necessary in the virtuals 
    and delta_e(act) is obtained as the sum of energies of excitations a la MP 






.. c:function:: give_1h1p_contrib

    .. code:: text

        subroutine give_1h1p_contrib(matrix_1h1p)

    File: :file:`new_way.irp.f`

    





.. c:function:: give_1h1p_only_doubles_spin_cross

    .. code:: text

        subroutine give_1h1p_only_doubles_spin_cross(matrix_1h1p)

    File: :file:`new_way.irp.f`

    





.. c:function:: give_1h1p_sec_order_singles_contrib

    .. code:: text

        subroutine give_1h1p_sec_order_singles_contrib(matrix_1h1p)

    File: :file:`new_way.irp.f`

    





.. c:function:: give_1h2p_contrib

    .. code:: text

        subroutine give_1h2p_contrib(matrix_1h2p)

    File: :file:`new_way.irp.f`

    





.. c:function:: give_1h2p_contrib_sec_order

    .. code:: text

        subroutine give_1h2p_contrib_sec_order(matrix_1h2p)

    File: :file:`new_way_second_order_coef.irp.f`

    





.. c:function:: give_1h2p_new

    .. code:: text

        subroutine give_1h2p_new(matrix_1h2p)

    File: :file:`second_order_new.irp.f`

    





.. c:function:: give_1p_sec_order_singles_contrib

    .. code:: text

        subroutine give_1p_sec_order_singles_contrib(matrix_1p)

    File: :file:`new_way.irp.f`

    





.. c:function:: give_2h1p_contrib

    .. code:: text

        subroutine give_2h1p_contrib(matrix_2h1p)

    File: :file:`new_way.irp.f`

    





.. c:function:: give_2h1p_contrib_sec_order

    .. code:: text

        subroutine give_2h1p_contrib_sec_order(matrix_2h1p)

    File: :file:`new_way_second_order_coef.irp.f`

    





.. c:function:: give_2h1p_new

    .. code:: text

        subroutine give_2h1p_new(matrix_2h1p)

    File: :file:`second_order_new.irp.f`

    





.. c:function:: give_2h2p

    .. code:: text

        subroutine give_2h2p(contrib_2h2p)

    File: :file:`give_2h2p.irp.f`

    





.. c:function:: give_2p_new

    .. code:: text

        subroutine give_2p_new(matrix_2p)

    File: :file:`second_order_new_2p.irp.f`

    





.. c:function:: give_active_part_determinant

    .. code:: text

        subroutine give_active_part_determinant(det_in,det_out)

    File: :file:`utils_bitmask.irp.f`

    





.. c:function:: give_core_inactive_part_determinant

    .. code:: text

        subroutine give_core_inactive_part_determinant(det_in,det_out)

    File: :file:`utils_bitmask.irp.f`

    





.. c:function:: give_holes_in_inactive_space

    .. code:: text

        subroutine give_holes_in_inactive_space(det_1,n_holes_spin,n_holes,holes_list)

    File: :file:`psi_active_prov.irp.f`

    returns the holes operators WITHIN THE INACTIVE SPACE that has lead to det_1. 
    n_holes is the total number of holes n_holes_spin is the number of number of holes per spin (1=alpha, 2=beta) holes_inactive_list is the index of the holes per spin, that ranges from 1 to mo_tot_num





.. c:function:: give_particles_in_virt_space

    .. code:: text

        subroutine give_particles_in_virt_space(det_1,n_particles_spin,n_particles,particles_list)

    File: :file:`psi_active_prov.irp.f`

    returns the holes operators WITHIN THE VIRTUAL SPACE that has lead to det_1. 
    n_particles is the total number of particles n_particles_spin is the number of number of particles per spin (1=alpha, 2=beta) particles_inactive_list is the index of the particles per spin, that ranges from 1 to mo_tot_num





.. c:function:: give_singles_and_partial_doubles_1h1p_contrib

    .. code:: text

        subroutine give_singles_and_partial_doubles_1h1p_contrib(matrix_1h1p,e_corr_from_1h1p_singles)

    File: :file:`energies_cas.irp.f`

    





.. c:function:: give_virt_part_determinant

    .. code:: text

        subroutine give_virt_part_determinant(det_in,det_out)

    File: :file:`utils_bitmask.irp.f`

    





.. c:function:: h_apply_mrpt

    .. code:: text

        subroutine H_apply_mrpt(delta_ij_,  Ndet)

    File: :file:`h_apply.irp.f_shell_186`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrpt_1h

    .. code:: text

        subroutine H_apply_mrpt_1h(delta_ij_,  Ndet)

    File: :file:`h_apply.irp.f_shell_186`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrpt_1h1p

    .. code:: text

        subroutine H_apply_mrpt_1h1p(delta_ij_,  Ndet)

    File: :file:`h_apply.irp.f_shell_186`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrpt_1h1p_diexc

    .. code:: text

        subroutine H_apply_mrpt_1h1p_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_1h1p_diexcorg

    .. code:: text

        subroutine H_apply_mrpt_1h1p_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_1h1p_diexcp

    .. code:: text

        subroutine H_apply_mrpt_1h1p_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_1h1p_monoexc

    .. code:: text

        subroutine H_apply_mrpt_1h1p_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_1h2p

    .. code:: text

        subroutine H_apply_mrpt_1h2p(delta_ij_,  Ndet)

    File: :file:`h_apply.irp.f_shell_186`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrpt_1h2p_diexc

    .. code:: text

        subroutine H_apply_mrpt_1h2p_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_1h2p_diexcorg

    .. code:: text

        subroutine H_apply_mrpt_1h2p_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_1h2p_diexcp

    .. code:: text

        subroutine H_apply_mrpt_1h2p_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_1h2p_monoexc

    .. code:: text

        subroutine H_apply_mrpt_1h2p_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_1h_diexc

    .. code:: text

        subroutine H_apply_mrpt_1h_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_1h_diexcorg

    .. code:: text

        subroutine H_apply_mrpt_1h_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_1h_diexcp

    .. code:: text

        subroutine H_apply_mrpt_1h_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_1h_monoexc

    .. code:: text

        subroutine H_apply_mrpt_1h_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_1p

    .. code:: text

        subroutine H_apply_mrpt_1p(delta_ij_,  Ndet)

    File: :file:`h_apply.irp.f_shell_186`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrpt_1p_diexc

    .. code:: text

        subroutine H_apply_mrpt_1p_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_1p_diexcorg

    .. code:: text

        subroutine H_apply_mrpt_1p_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_1p_diexcp

    .. code:: text

        subroutine H_apply_mrpt_1p_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_1p_monoexc

    .. code:: text

        subroutine H_apply_mrpt_1p_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_2h

    .. code:: text

        subroutine H_apply_mrpt_2h(delta_ij_,  Ndet)

    File: :file:`h_apply.irp.f_shell_186`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrpt_2h1p

    .. code:: text

        subroutine H_apply_mrpt_2h1p(delta_ij_,  Ndet)

    File: :file:`h_apply.irp.f_shell_186`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrpt_2h1p_diexc

    .. code:: text

        subroutine H_apply_mrpt_2h1p_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_2h1p_diexcorg

    .. code:: text

        subroutine H_apply_mrpt_2h1p_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_2h1p_diexcp

    .. code:: text

        subroutine H_apply_mrpt_2h1p_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_2h1p_monoexc

    .. code:: text

        subroutine H_apply_mrpt_2h1p_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_2h2p

    .. code:: text

        subroutine H_apply_mrpt_2h2p(delta_ij_,  Ndet)

    File: :file:`h_apply.irp.f_shell_186`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrpt_2h2p_diexc

    .. code:: text

        subroutine H_apply_mrpt_2h2p_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_2h2p_diexcorg

    .. code:: text

        subroutine H_apply_mrpt_2h2p_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_2h2p_diexcp

    .. code:: text

        subroutine H_apply_mrpt_2h2p_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_2h2p_monoexc

    .. code:: text

        subroutine H_apply_mrpt_2h2p_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_2h_diexc

    .. code:: text

        subroutine H_apply_mrpt_2h_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_2h_diexcorg

    .. code:: text

        subroutine H_apply_mrpt_2h_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_2h_diexcp

    .. code:: text

        subroutine H_apply_mrpt_2h_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_2h_monoexc

    .. code:: text

        subroutine H_apply_mrpt_2h_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_2p

    .. code:: text

        subroutine H_apply_mrpt_2p(delta_ij_,  Ndet)

    File: :file:`h_apply.irp.f_shell_186`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrpt_2p_diexc

    .. code:: text

        subroutine H_apply_mrpt_2p_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_2p_diexcorg

    .. code:: text

        subroutine H_apply_mrpt_2p_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_2p_diexcp

    .. code:: text

        subroutine H_apply_mrpt_2p_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_2p_monoexc

    .. code:: text

        subroutine H_apply_mrpt_2p_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_diexc

    .. code:: text

        subroutine H_apply_mrpt_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_diexcorg

    .. code:: text

        subroutine H_apply_mrpt_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrpt_diexcp

    .. code:: text

        subroutine H_apply_mrpt_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    





.. c:function:: h_apply_mrpt_monoexc

    .. code:: text

        subroutine H_apply_mrpt_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Ndet )

    File: :file:`h_apply.irp.f_shell_186`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: i_h_j_dyall

    .. code:: text

        subroutine i_H_j_dyall(key_i,key_j,Nint,hij)

    File: :file:`excitations_cas.irp.f`

    Returns <i|H|j> where i and j are determinants





.. c:function:: i_h_j_dyall_no_exchange

    .. code:: text

        subroutine i_H_j_dyall_no_exchange(key_i,key_j,Nint,hij)

    File: :file:`excitations_cas.irp.f`

    Returns <i|H|j> where i and j are determinants





.. c:function:: mrpt_dress

    .. code:: text

        subroutine mrpt_dress(delta_ij_,  Ndet,i_generator,n_selected,det_buffer,Nint,iproc,key_mask)

    File: :file:`mrpt_dress.irp.f`

    





.. c:function:: set_generators_bitmasks_as_holes_and_particles

    .. code:: text

        subroutine set_generators_bitmasks_as_holes_and_particles

    File: :file:`set_as_holes_and_particles.irp.f`

    





.. c:function:: u0_h_dyall_u0

    .. code:: text

        subroutine u0_H_dyall_u0(energies,psi_in,psi_in_coef,ndet,dim_psi_in,dim_psi_coef,N_states_in,state_target)

    File: :file:`excitations_cas.irp.f`

    





.. c:function:: u0_h_dyall_u0_no_exchange

    .. code:: text

        subroutine u0_H_dyall_u0_no_exchange(energies,psi_in,psi_in_coef,ndet,dim_psi_in,dim_psi_coef,N_states_in,state_target)

    File: :file:`excitations_cas.irp.f`

    


