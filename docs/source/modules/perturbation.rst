.. _perturbation:

.. program:: perturbation

.. default-role:: option

============
Perturbation
============


All subroutines in ``*.irp.f`` starting with `pt2_` in the current directory are
perturbation computed using the routine `i_H_psi`. Other cases are not allowed.
The arguments of the `pt2_` are always:

.. code-block:: fortran

  subroutine pt2_...(                                          &
      psi_ref,                                                 &
      psi_ref_coefs,                                           &
      E_refs,                                                  &
      det_pert,                                                &
      c_pert,                                                  &
      e_2_pert,                                                &
      H_pert_diag,                                             &
      Nint,                                                    &
      Ndet,                                                    &
      N_st )


  integer          , intent(in)  :: Nint,Ndet,N_st
  integer(bit_kind), intent(in)  :: psi_ref(Nint,2,Ndet)
  double precision , intent(in)  :: psi_ref_coefs(Ndet,N_st)
  double precision , intent(in)  :: E_refs(N_st)
  integer(bit_kind), intent(in)  :: det_pert(Nint,2)
  double precision , intent(out) :: c_pert(N_st),e_2_pert(N_st),H_pert_diag


`psi_ref`
  bitstring of the determinants present in the various `N_st` states
 
`psi_ref_coefs`
  coefficients of the determinants on the various `N_st` states
 
`E_refs`
  Energy of the various `N_st` states
 
`det_pert`
  Perturber determinant

`c_pert`
  Perturbative coefficients for the various states
 
`e_2_pert`
  Perturbative energetic contribution for the various states

`H_pert_diag`
  Diagonal |H| matrix element of the perturber

`Nint`
  Should be equal to `N_int`

`Ndet`
  Number of determinants `i` in |Psi| on which we apply <det_pert | |H| | `i`>

`N_st`
  Number of states






EZFIO parameters
----------------

.. option:: do_pt2

    If `True`, compute the |PT2| contribution

    Default: True

.. option:: pt2_max

    The selection process stops when the largest |PT2| (for all the state) is lower

    than `pt2_max` in absolute value

    Default: 0.0001

.. option:: pt2_relative_error

    Stop stochastic |PT2| when the relative error is smaller than `PT2_relative_error`

    Default: 0.005

.. option:: correlation_energy_ratio_max

    The selection process stops at a fixed correlation ratio (useful for getting same accuracy between molecules).

    Defined as :math:`{E_{CI}-E_{HF}}/{E_{CI}+E_{PT2} - E_{HF}}`.

    Default: 1.00

.. option:: h0_type

    Type of zeroth-order Hamiltonian [ EN | Barycentric | Variance | SOP ]

    Default: EN


Providers
---------


.. c:var:: fill_h_apply_buffer_selection

    .. code:: text

        subroutine fill_H_apply_buffer_selection(n_selected,det_buffer,e_2_pert_buffer,coef_pert_buffer, &
        N_st,Nint,iproc,select_max_out)

    File: :file:`selection.irp.f`

    Fill the H_apply buffer with determiants for the selection




.. c:var:: max_exc_pert

    .. code:: text

        integer	:: max_exc_pert

    File: :file:`exc_max.irp.f`

    




.. c:var:: selection_criterion

    .. code:: text

        double precision	:: selection_criterion
        double precision	:: selection_criterion_min
        double precision	:: selection_criterion_factor

    File: :file:`selection.irp.f`

    Threshold to select determinants. Set by selection routines.




.. c:var:: selection_criterion_factor

    .. code:: text

        double precision	:: selection_criterion
        double precision	:: selection_criterion_min
        double precision	:: selection_criterion_factor

    File: :file:`selection.irp.f`

    Threshold to select determinants. Set by selection routines.




.. c:var:: selection_criterion_min

    .. code:: text

        double precision	:: selection_criterion
        double precision	:: selection_criterion_min
        double precision	:: selection_criterion_factor

    File: :file:`selection.irp.f`

    Threshold to select determinants. Set by selection routines.




.. c:var:: var_pt2_ratio

    .. code:: text

        double precision	:: var_pt2_ratio

    File: :file:`var_pt2_ratio_provider.irp.f`

    The selection process stops when the energy ratio variational/(variational+PT2) is equal to var_pt2_ratio




Subroutines / functions
-----------------------



.. c:function:: i_h_psi_pert_new_minilist

    .. code:: text

        subroutine i_H_psi_pert_new_minilist(key,keys,idx_key,N_minilist,coef,Nint,Ndet,Ndet_max,Nstate,i_H_psi_array,coef_pert)

    File: :file:`pt2_new.irp.f`

    Computes <i|H|Psi> = \sum_J c_J <i|H|J>. 
    Uses filter_connected_i_H_psi0 to get all the |J> to which |i> is connected. The |J> are searched in short pre-computed lists.





.. c:function:: perturb_buffer_by_mono_decontracted

    .. code:: text

        subroutine perturb_buffer_by_mono_decontracted(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``decontracted`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_by_mono_dummy

    .. code:: text

        subroutine perturb_buffer_by_mono_dummy(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``dummy`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_by_mono_epstein_nesbet

    .. code:: text

        subroutine perturb_buffer_by_mono_epstein_nesbet(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``epstein_nesbet`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_by_mono_epstein_nesbet_2x2

    .. code:: text

        subroutine perturb_buffer_by_mono_epstein_nesbet_2x2(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``epstein_nesbet_2x2`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_by_mono_epstein_nesbet_2x2_no_ci_diag

    .. code:: text

        subroutine perturb_buffer_by_mono_epstein_nesbet_2x2_no_ci_diag(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``epstein_nesbet_2x2_no_ci_diag`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_by_mono_h_core

    .. code:: text

        subroutine perturb_buffer_by_mono_h_core(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``h_core`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_by_mono_moller_plesset

    .. code:: text

        subroutine perturb_buffer_by_mono_moller_plesset(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``moller_plesset`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_by_mono_moller_plesset_general

    .. code:: text

        subroutine perturb_buffer_by_mono_moller_plesset_general(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``moller_plesset_general`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_by_mono_qdpt

    .. code:: text

        subroutine perturb_buffer_by_mono_qdpt(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``qdpt`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_decontracted

    .. code:: text

        subroutine perturb_buffer_decontracted(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``decontracted`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_dummy

    .. code:: text

        subroutine perturb_buffer_dummy(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``dummy`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_epstein_nesbet

    .. code:: text

        subroutine perturb_buffer_epstein_nesbet(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``epstein_nesbet`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_epstein_nesbet_2x2

    .. code:: text

        subroutine perturb_buffer_epstein_nesbet_2x2(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``epstein_nesbet_2x2`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_epstein_nesbet_2x2_no_ci_diag

    .. code:: text

        subroutine perturb_buffer_epstein_nesbet_2x2_no_ci_diag(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``epstein_nesbet_2x2_no_ci_diag`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_h_core

    .. code:: text

        subroutine perturb_buffer_h_core(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``h_core`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_moller_plesset

    .. code:: text

        subroutine perturb_buffer_moller_plesset(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``moller_plesset`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_moller_plesset_general

    .. code:: text

        subroutine perturb_buffer_moller_plesset_general(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``moller_plesset_general`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: perturb_buffer_qdpt

    .. code:: text

        subroutine perturb_buffer_qdpt(i_generator,buffer,buffer_size,e_2_pert_buffer,coef_pert_buffer,sum_e_2_pert,sum_norm_pert,sum_H_pert_diag,N_st,Nint,key_mask,fock_diag_tmp,electronic_energy)

    File: :file:`perturbation.irp.f_shell_13`

    Applly pertubration ``qdpt`` to the buffer of determinants generated in the H_apply routine.





.. c:function:: pt2_decontracted

    .. code:: text

        subroutine pt2_decontracted (electronic_energy,det_ref,det_pert,fock_diag_tmp,c_pert,e_2_pert,H_pert_diag,Nint,ndet,N_st,minilist,idx_minilist,N_minilist)

    File: :file:`pt2_equations.irp.f_template_413`

    





.. c:function:: pt2_dummy

    .. code:: text

        subroutine pt2_dummy (electronic_energy,det_ref,det_pert,fock_diag_tmp,c_pert,e_2_pert,H_pert_diag,Nint,ndet,N_st,minilist,idx_minilist,N_minilist)

    File: :file:`pt2_equations.irp.f_template_413`

    Dummy perturbation to add all connected determinants.





.. c:function:: pt2_epstein_nesbet

    .. code:: text

        subroutine pt2_epstein_nesbet (electronic_energy,det_ref,det_pert,fock_diag_tmp,c_pert,e_2_pert,H_pert_diag,Nint,ndet,N_st,minilist,idx_minilist,N_minilist)

    File: :file:`pt2_equations.irp.f_template_413`

    compute the standard Epstein-Nesbet perturbative first order coefficient and second order energetic contribution 
    for the various N_st states. 
    c_pert(i) = <psi(i)|H|det_pert>/( E(i) - <det_pert|H|det_pert> ) 
    e_2_pert(i) = <psi(i)|H|det_pert>^2/( E(i) - <det_pert|H|det_pert> ) 






.. c:function:: pt2_epstein_nesbet_2x2

    .. code:: text

        subroutine pt2_epstein_nesbet_2x2 (electronic_energy,det_ref,det_pert,fock_diag_tmp,c_pert,e_2_pert,H_pert_diag,Nint,ndet,N_st,minilist,idx_minilist,N_minilist)

    File: :file:`pt2_equations.irp.f_template_413`

    compute the Epstein-Nesbet 2x2 diagonalization coefficient and energetic contribution 
    for the various N_st states. 
    e_2_pert(i) = 0.5 * (( <det_pert|H|det_pert> -  E(i) )  - sqrt( ( <det_pert|H|det_pert> -  E(i)) ^2 + 4 <psi(i)|H|det_pert>^2  ) 
    c_pert(i) = e_2_pert(i)/ <psi(i)|H|det_pert> 






.. c:function:: pt2_epstein_nesbet_2x2_no_ci_diag

    .. code:: text

        subroutine pt2_epstein_nesbet_2x2_no_ci_diag(electronic_energy,det_ref,det_pert,fock_diag_tmp,c_pert,e_2_pert,H_pert_diag,Nint,ndet,N_st,minilist,idx_minilist,N_minilist)

    File: :file:`pt2_equations.irp.f_template_413`

    compute the Epstein-Nesbet 2x2 diagonalization coefficient and energetic contribution 
    for the various N_st states. 
    e_2_pert(i) = 0.5 * (( <det_pert|H|det_pert> -  E(i) )  - sqrt( ( <det_pert|H|det_pert> -  E(i)) ^2 + 4 <psi(i)|H|det_pert>^2  ) 
    c_pert(i) = e_2_pert(i)/ <psi(i)|H|det_pert> 






.. c:function:: pt2_h_core

    .. code:: text

        subroutine pt2_h_core(det_pert,c_pert,e_2_pert,H_pert_diag,Nint,ndet,N_st,minilist,idx_minilist,N_minilist)

    File: :file:`pert_single.irp.f`

    compute the standard Epstein-Nesbet perturbative first order coefficient and second order energetic contribution 
    for the various N_st states. 
    c_pert(i) = <psi(i)|H|det_pert>/( E(i) - <det_pert|H|det_pert> ) 
    e_2_pert(i) = <psi(i)|H|det_pert>^2/( E(i) - <det_pert|H|det_pert> ) 






.. c:function:: pt2_moller_plesset

    .. code:: text

        subroutine pt2_moller_plesset (electronic_energy,det_ref,det_pert,fock_diag_tmp,c_pert,e_2_pert,H_pert_diag,Nint,ndet,N_st,minilist,idx_minilist,N_minilist)

    File: :file:`pt2_equations.irp.f_template_413`

    compute the standard Moller-Plesset perturbative first order coefficient and second order energetic contribution 
    for the various n_st states. 
    c_pert(i) = <psi(i)|H|det_pert>/(difference of orbital energies) 
    e_2_pert(i) = <psi(i)|H|det_pert>^2/(difference of orbital energies) 






.. c:function:: pt2_moller_plesset_general

    .. code:: text

        subroutine pt2_moller_plesset_general (electronic_energy,det_ref,det_pert,fock_diag_tmp,c_pert,e_2_pert,H_pert_diag,Nint,ndet,N_st,minilist,idx_minilist,N_minilist)

    File: :file:`pt2_equations.irp.f_template_413`

    compute the general Moller-Plesset perturbative first order coefficient and second order energetic contribution 
    for the various n_st states. 
    c_pert(i) = <psi(i)|H|det_pert>/(difference of orbital energies) 
    e_2_pert(i) = <psi(i)|H|det_pert>^2/(difference of orbital energies) 






.. c:function:: pt2_qdpt

    .. code:: text

        subroutine pt2_qdpt (electronic_energy,det_ref,det_pert,fock_diag_tmp,c_pert,e_2_pert,H_pert_diag,Nint,ndet,N_st,minilist,idx_minilist,N_minilist)

    File: :file:`pt2_equations.irp.f_template_413`

    compute the QDPT first order coefficient and second order energetic contribution 
    for the various N_st states. 
    c_pert(i) = <psi(i)|H|det_pert>/( <psi(i)|H|psi(i)> - <det_pert|H|det_pert> ) 






.. c:function:: remove_small_contributions

    .. code:: text

        subroutine remove_small_contributions

    File: :file:`selection.irp.f`

    Remove determinants with small contributions. N_states is assumed to be provided.





.. c:function:: repeat_all_e_corr

    .. code:: text

        double precision function repeat_all_e_corr(key_in)

    File: :file:`pert_sc2.irp.f`

    


