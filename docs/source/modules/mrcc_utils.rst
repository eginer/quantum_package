.. _mrcc_utils:

.. program:: mrcc_utils

.. default-role:: option

==========
MRCC_Utils
==========

Subroutines and providers required for |MRCC|.





Providers
---------


.. c:var:: active_excitation_to_determinants_idx

    .. code:: text

        integer, allocatable	:: active_excitation_to_determinants_idx	(0:N_det_ref+1,n_exc_active_sze)
        double precision, allocatable	:: active_excitation_to_determinants_val	(N_states,N_det_ref+1,n_exc_active_sze)

    File: :file:`amplitudes.irp.f`

    Sparse matrix A containing the matrix to transform the active excitations to determinants : A | \Psi_0 > = | \Psi_SD >




.. c:var:: active_excitation_to_determinants_val

    .. code:: text

        integer, allocatable	:: active_excitation_to_determinants_idx	(0:N_det_ref+1,n_exc_active_sze)
        double precision, allocatable	:: active_excitation_to_determinants_val	(N_states,N_det_ref+1,n_exc_active_sze)

    File: :file:`amplitudes.irp.f`

    Sparse matrix A containing the matrix to transform the active excitations to determinants : A | \Psi_0 > = | \Psi_SD >




.. c:var:: active_hh_idx

    .. code:: text

        integer	:: n_exc_active
        integer, allocatable	:: active_pp_idx	(hh_nex)
        integer, allocatable	:: active_hh_idx	(hh_nex)
        logical, allocatable	:: is_active_exc	(hh_nex)

    File: :file:`amplitudes.irp.f`

    is_active_exc : True if the excitation involves at least one active MO 
    n_exc_active : Number of active excitations : Number of excitations without the inactive ones. 
    active_hh_idx : 
    active_pp_idx :




.. c:var:: active_pp_idx

    .. code:: text

        integer	:: n_exc_active
        integer, allocatable	:: active_pp_idx	(hh_nex)
        integer, allocatable	:: active_hh_idx	(hh_nex)
        logical, allocatable	:: is_active_exc	(hh_nex)

    File: :file:`amplitudes.irp.f`

    is_active_exc : True if the excitation involves at least one active MO 
    n_exc_active : Number of active excitations : Number of excitations without the inactive ones. 
    active_hh_idx : 
    active_pp_idx :




.. c:var:: dij

    .. code:: text

        double precision, allocatable	:: dij	(N_det_ref,N_det_non_ref,N_states)

    File: :file:`mrcc_utils.irp.f`

    




.. c:var:: dij_unique

    .. code:: text

        double precision, allocatable	:: dij_unique	(hh_nex,N_states)
        double precision, allocatable	:: rho_mrcc	(N_det_non_ref,N_states)

    File: :file:`mrcc_utils.irp.f`

    




.. c:var:: has_a_unique_parent

    .. code:: text

        logical, allocatable	:: has_a_unique_parent	(N_det_non_ref)

    File: :file:`amplitudes.irp.f`

    True if the determinant in the non-reference has a unique parent




.. c:var:: hh_exists

    .. code:: text

        integer, allocatable	:: hh_exists	(4,N_hh_exists)
        integer, allocatable	:: pp_exists	(4,N_pp_exists)
        integer, allocatable	:: hh_shortcut	(0:N_hh_exists + 1)
        integer	:: hh_nex

    File: :file:`mrcc_utils.irp.f`

    
    hh_exists : 
    pp_exists : 
    hh_shortcut : 
    hh_nex : Total number of excitation operators 





.. c:var:: hh_nex

    .. code:: text

        integer, allocatable	:: hh_exists	(4,N_hh_exists)
        integer, allocatable	:: pp_exists	(4,N_pp_exists)
        integer, allocatable	:: hh_shortcut	(0:N_hh_exists + 1)
        integer	:: hh_nex

    File: :file:`mrcc_utils.irp.f`

    
    hh_exists : 
    pp_exists : 
    hh_shortcut : 
    hh_nex : Total number of excitation operators 





.. c:var:: hh_shortcut

    .. code:: text

        integer, allocatable	:: hh_exists	(4,N_hh_exists)
        integer, allocatable	:: pp_exists	(4,N_pp_exists)
        integer, allocatable	:: hh_shortcut	(0:N_hh_exists + 1)
        integer	:: hh_nex

    File: :file:`mrcc_utils.irp.f`

    
    hh_exists : 
    pp_exists : 
    hh_shortcut : 
    hh_nex : Total number of excitation operators 





.. c:var:: hij_mrcc

    .. code:: text

        double precision, allocatable	:: hij_mrcc	(N_det_non_ref,N_det_ref)

    File: :file:`mrcc_utils.irp.f`

    < ref | H | Non-ref > matrix




.. c:var:: is_active_exc

    .. code:: text

        integer	:: n_exc_active
        integer, allocatable	:: active_pp_idx	(hh_nex)
        integer, allocatable	:: active_hh_idx	(hh_nex)
        logical, allocatable	:: is_active_exc	(hh_nex)

    File: :file:`amplitudes.irp.f`

    is_active_exc : True if the excitation involves at least one active MO 
    n_exc_active : Number of active excitations : Number of excitations without the inactive ones. 
    active_hh_idx : 
    active_pp_idx :




.. c:var:: lambda_mrcc

    .. code:: text

        double precision, allocatable	:: lambda_mrcc	(N_states,N_det_non_ref)
        integer, allocatable	:: lambda_mrcc_pt2	(0:psi_det_size)
        integer, allocatable	:: lambda_mrcc_kept	(0:psi_det_size)

    File: :file:`mrcc_utils.irp.f`

    cm/<Psi_0|H|D_m> or perturbative 1/Delta_E(m)




.. c:var:: lambda_mrcc_kept

    .. code:: text

        double precision, allocatable	:: lambda_mrcc	(N_states,N_det_non_ref)
        integer, allocatable	:: lambda_mrcc_pt2	(0:psi_det_size)
        integer, allocatable	:: lambda_mrcc_kept	(0:psi_det_size)

    File: :file:`mrcc_utils.irp.f`

    cm/<Psi_0|H|D_m> or perturbative 1/Delta_E(m)




.. c:var:: lambda_mrcc_pt2

    .. code:: text

        double precision, allocatable	:: lambda_mrcc	(N_states,N_det_non_ref)
        integer, allocatable	:: lambda_mrcc_pt2	(0:psi_det_size)
        integer, allocatable	:: lambda_mrcc_kept	(0:psi_det_size)

    File: :file:`mrcc_utils.irp.f`

    cm/<Psi_0|H|D_m> or perturbative 1/Delta_E(m)




.. c:var:: mrcc_ata_ind

    .. code:: text

        integer, allocatable	:: mrcc_ata_ind	(N_det_ref * n_exc_active_sze)
        double precision, allocatable	:: mrcc_ata_val	(N_states,N_det_ref * n_exc_active_sze)
        integer, allocatable	:: mrcc_col_shortcut	(n_exc_active_sze)
        integer, allocatable	:: mrcc_n_col	(n_exc_active_sze)

    File: :file:`amplitudes.irp.f`

    A is active_excitation_to_determinants in At.A




.. c:var:: mrcc_ata_val

    .. code:: text

        integer, allocatable	:: mrcc_ata_ind	(N_det_ref * n_exc_active_sze)
        double precision, allocatable	:: mrcc_ata_val	(N_states,N_det_ref * n_exc_active_sze)
        integer, allocatable	:: mrcc_col_shortcut	(n_exc_active_sze)
        integer, allocatable	:: mrcc_n_col	(n_exc_active_sze)

    File: :file:`amplitudes.irp.f`

    A is active_excitation_to_determinants in At.A




.. c:var:: mrcc_col_shortcut

    .. code:: text

        integer, allocatable	:: mrcc_ata_ind	(N_det_ref * n_exc_active_sze)
        double precision, allocatable	:: mrcc_ata_val	(N_states,N_det_ref * n_exc_active_sze)
        integer, allocatable	:: mrcc_col_shortcut	(n_exc_active_sze)
        integer, allocatable	:: mrcc_n_col	(n_exc_active_sze)

    File: :file:`amplitudes.irp.f`

    A is active_excitation_to_determinants in At.A




.. c:var:: mrcc_n_col

    .. code:: text

        integer, allocatable	:: mrcc_ata_ind	(N_det_ref * n_exc_active_sze)
        double precision, allocatable	:: mrcc_ata_val	(N_states,N_det_ref * n_exc_active_sze)
        integer, allocatable	:: mrcc_col_shortcut	(n_exc_active_sze)
        integer, allocatable	:: mrcc_n_col	(n_exc_active_sze)

    File: :file:`amplitudes.irp.f`

    A is active_excitation_to_determinants in At.A




.. c:var:: mrmode

    .. code:: text

        integer	:: mrmode

    File: :file:`mrcc_utils.irp.f`

    




.. c:var:: n_ex_exists

    .. code:: text

        integer	:: n_hh_exists
        integer	:: n_pp_exists
        integer	:: n_ex_exists

    File: :file:`mrcc_utils.irp.f`

    




.. c:var:: n_exc_active

    .. code:: text

        integer	:: n_exc_active
        integer, allocatable	:: active_pp_idx	(hh_nex)
        integer, allocatable	:: active_hh_idx	(hh_nex)
        logical, allocatable	:: is_active_exc	(hh_nex)

    File: :file:`amplitudes.irp.f`

    is_active_exc : True if the excitation involves at least one active MO 
    n_exc_active : Number of active excitations : Number of excitations without the inactive ones. 
    active_hh_idx : 
    active_pp_idx :




.. c:var:: n_exc_active_sze

    .. code:: text

        integer	:: n_exc_active_sze

    File: :file:`amplitudes.irp.f`

    Dimension of arrays to avoid zero-sized arrays




.. c:var:: n_hh_exists

    .. code:: text

        integer	:: n_hh_exists
        integer	:: n_pp_exists
        integer	:: n_ex_exists

    File: :file:`mrcc_utils.irp.f`

    




.. c:var:: n_pp_exists

    .. code:: text

        integer	:: n_hh_exists
        integer	:: n_pp_exists
        integer	:: n_ex_exists

    File: :file:`mrcc_utils.irp.f`

    




.. c:var:: pp_exists

    .. code:: text

        integer, allocatable	:: hh_exists	(4,N_hh_exists)
        integer, allocatable	:: pp_exists	(4,N_pp_exists)
        integer, allocatable	:: hh_shortcut	(0:N_hh_exists + 1)
        integer	:: hh_nex

    File: :file:`mrcc_utils.irp.f`

    
    hh_exists : 
    pp_exists : 
    hh_shortcut : 
    hh_nex : Total number of excitation operators 





.. c:var:: psi_non_ref_sorted

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref_sorted	(N_int,2,N_det_non_ref)
        integer, allocatable	:: psi_non_ref_sorted_idx	(N_det_non_ref)

    File: :file:`mrcc_utils.irp.f`

    




.. c:var:: psi_non_ref_sorted_idx

    .. code:: text

        integer(bit_kind), allocatable	:: psi_non_ref_sorted	(N_int,2,N_det_non_ref)
        integer, allocatable	:: psi_non_ref_sorted_idx	(N_det_non_ref)

    File: :file:`mrcc_utils.irp.f`

    




.. c:var:: psi_ref_lock

    .. code:: text

        integer(omp_lock_kind), allocatable	:: psi_ref_lock	(psi_det_size)

    File: :file:`mrcc_dress.irp.f`

    Locks on ref determinants to fill delta_ij




.. c:var:: rho_mrcc

    .. code:: text

        double precision, allocatable	:: dij_unique	(hh_nex,N_states)
        double precision, allocatable	:: rho_mrcc	(N_det_non_ref,N_states)

    File: :file:`mrcc_utils.irp.f`

    




Subroutines / functions
-----------------------



.. c:function:: apply_hole_local

    .. code:: text

        subroutine apply_hole_local(det, exc, res, ok, Nint)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: apply_particle_local

    .. code:: text

        subroutine apply_particle_local(det, exc, res, ok, Nint)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: dec_exc

    .. code:: text

        subroutine dec_exc(exc, h1, h2, p1, p2)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: exc_inf

    .. code:: text

        logical function exc_inf(exc1, exc2)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: exccmp

    .. code:: text

        integer function excCmp(exc1, exc2)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: exceq

    .. code:: text

        logical function excEq(exc1, exc2)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: find_triples_and_quadruples

    .. code:: text

        subroutine find_triples_and_quadruples(i_generator,n_selected,det_buffer,Nint,tq,N_tq,miniList,N_miniList)

    File: :file:`mrcc_dress.irp.f`

    





.. c:function:: find_triples_and_quadruples_micro

    .. code:: text

        subroutine find_triples_and_quadruples_micro(i_generator,n_selected,det_buffer,Nint,tq,N_tq,microlist,ptr_microlist,N_microlist,key_mask)

    File: :file:`mrcc_dress.irp.f`

    





.. c:function:: get_dij

    .. code:: text

        double precision function get_dij(det1, det2, s, Nint)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: get_dij_index

    .. code:: text

        double precision function get_dij_index(II, i, s, Nint)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: h_apply_mrcc

    .. code:: text

        subroutine H_apply_mrcc(delta_ij_, Nstates, Ndet_non_ref, Ndet_ref)

    File: :file:`h_apply.irp.f_shell_38`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrcc_diexc

    .. code:: text

        subroutine H_apply_mrcc_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Nstates, Ndet_non_ref, Ndet_ref )

    File: :file:`h_apply.irp.f_shell_38`

    





.. c:function:: h_apply_mrcc_diexcorg

    .. code:: text

        subroutine H_apply_mrcc_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Nstates, Ndet_non_ref, Ndet_ref )

    File: :file:`h_apply.irp.f_shell_38`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrcc_diexcp

    .. code:: text

        subroutine H_apply_mrcc_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in , delta_ij_, Nstates, Ndet_non_ref, Ndet_ref )

    File: :file:`h_apply.irp.f_shell_38`

    





.. c:function:: h_apply_mrcc_monoexc

    .. code:: text

        subroutine H_apply_mrcc_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in , delta_ij_, Nstates, Ndet_non_ref, Ndet_ref )

    File: :file:`h_apply.irp.f_shell_38`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrcc_pt2

    .. code:: text

        subroutine H_apply_mrcc_PT2(pt2, norm_pert, H_pert_diag, N_st)

    File: :file:`h_apply.irp.f_shell_38`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrcc_pt2_diexc

    .. code:: text

        subroutine H_apply_mrcc_PT2_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in ,sum_e_2_pert_in,sum_norm_pert_in,sum_H_pert_diag_in,N_st,Nint )

    File: :file:`h_apply.irp.f_shell_38`

    





.. c:function:: h_apply_mrcc_pt2_diexcorg

    .. code:: text

        subroutine H_apply_mrcc_PT2_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in ,sum_e_2_pert_in,sum_norm_pert_in,sum_H_pert_diag_in,N_st,Nint )

    File: :file:`h_apply.irp.f_shell_38`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrcc_pt2_diexcp

    .. code:: text

        subroutine H_apply_mrcc_PT2_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in ,sum_e_2_pert_in,sum_norm_pert_in,sum_H_pert_diag_in,N_st,Nint )

    File: :file:`h_apply.irp.f_shell_38`

    





.. c:function:: h_apply_mrcc_pt2_monoexc

    .. code:: text

        subroutine H_apply_mrcc_PT2_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in ,sum_e_2_pert_in,sum_norm_pert_in,sum_H_pert_diag_in,N_st,Nint )

    File: :file:`h_apply.irp.f_shell_38`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrcepa_pt2

    .. code:: text

        subroutine H_apply_mrcepa_PT2(pt2, norm_pert, H_pert_diag, N_st)

    File: :file:`h_apply.irp.f_shell_38`

    Calls H_apply on the HF determinant and selects all connected single and double excitations (of the same symmetry). Auto-generated by the ``generate_h_apply`` script.





.. c:function:: h_apply_mrcepa_pt2_diexc

    .. code:: text

        subroutine H_apply_mrcepa_PT2_diexc(key_in, key_prev, hole_1,particl_1, hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in ,sum_e_2_pert_in,sum_norm_pert_in,sum_H_pert_diag_in,N_st,Nint )

    File: :file:`h_apply.irp.f_shell_38`

    





.. c:function:: h_apply_mrcepa_pt2_diexcorg

    .. code:: text

        subroutine H_apply_mrcepa_PT2_diexcOrg(key_in,key_mask,hole_1,particl_1,hole_2, particl_2, fock_diag_tmp, i_generator, iproc_in ,sum_e_2_pert_in,sum_norm_pert_in,sum_H_pert_diag_in,N_st,Nint )

    File: :file:`h_apply.irp.f_shell_38`

    Generate all double excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: h_apply_mrcepa_pt2_diexcp

    .. code:: text

        subroutine H_apply_mrcepa_PT2_diexcP(key_in, fs1, fh1, particl_1, fs2, fh2, particl_2, fock_diag_tmp, i_generator, iproc_in ,sum_e_2_pert_in,sum_norm_pert_in,sum_H_pert_diag_in,N_st,Nint )

    File: :file:`h_apply.irp.f_shell_38`

    





.. c:function:: h_apply_mrcepa_pt2_monoexc

    .. code:: text

        subroutine H_apply_mrcepa_PT2_monoexc(key_in, hole_1,particl_1,fock_diag_tmp,i_generator,iproc_in ,sum_e_2_pert_in,sum_norm_pert_in,sum_H_pert_diag_in,N_st,Nint )

    File: :file:`h_apply.irp.f_shell_38`

    Generate all single excitations of key_in using the bit masks of holes and particles. Assume N_int is already provided.





.. c:function:: is_generable

    .. code:: text

        logical function is_generable(det1, det2, Nint)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: mrcc_dress

    .. code:: text

        subroutine mrcc_dress(delta_ij_, Nstates, Ndet_non_ref, Ndet_ref,i_generator,n_selected,det_buffer,Nint,iproc,key_mask)

    File: :file:`mrcc_dress.irp.f`

    





.. c:function:: searchdet

    .. code:: text

        integer function searchDet(dets, det, n, Nint)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: searchexc

    .. code:: text

        integer function searchExc(excs, exc, n)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: sort_det

    .. code:: text

        subroutine sort_det(key, idx, N_key, Nint)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: sort_exc

    .. code:: text

        subroutine sort_exc(key, N_key)

    File: :file:`mrcc_utils.irp.f`

    





.. c:function:: tamise_exc

    .. code:: text

        subroutine tamise_exc(key, no, n, N_key)

    File: :file:`mrcc_utils.irp.f`

    Uncodumented : TODO





.. c:function:: unsortedsearchdet

    .. code:: text

        integer function unsortedSearchDet(dets, det, n, Nint)

    File: :file:`mrcc_utils.irp.f`

    


