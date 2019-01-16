.. _selectors_utils: 
 
.. program:: selectors_utils 
 
.. default-role:: option 
 
===============
selectors_utils
===============

Helper functions for selectors.

 
 
 
Providers 
--------- 
 

.. c:var:: coef_hf_selector

    .. code:: text

        double precision	:: coef_hf_selector
        double precision	:: inv_selectors_coef_hf
        double precision	:: inv_selectors_coef_hf_squared
        double precision, allocatable	:: e_corr_per_selectors	(N_det_selectors)
        double precision, allocatable	:: i_h_hf_per_selectors	(N_det_selectors)
        double precision, allocatable	:: delta_e_per_selector	(N_det_selectors)
        double precision	:: e_corr_double_only
        double precision	:: e_corr_second_order

    File: :file:`e_corr_selectors.irp.f`

    Correlation energy per determinant with respect to the Hartree-Fock determinant for the all the double excitations in the selectors determinants. 

    E_corr_per_selectors(i) = :math:`\langle D_i | H | \text{HF}\rangle  c(D_i)/c(HF)` if :math:`| D_i \rangle` is a double excitation. 

    E_corr_per_selectors(i) = -1000.d0 if it is not a double excitation 

    coef_hf_selector = coefficient of the Hartree Fock determinant in the selectors determinants


 

.. c:var:: delta_e_per_selector

    .. code:: text

        double precision	:: coef_hf_selector
        double precision	:: inv_selectors_coef_hf
        double precision	:: inv_selectors_coef_hf_squared
        double precision, allocatable	:: e_corr_per_selectors	(N_det_selectors)
        double precision, allocatable	:: i_h_hf_per_selectors	(N_det_selectors)
        double precision, allocatable	:: delta_e_per_selector	(N_det_selectors)
        double precision	:: e_corr_double_only
        double precision	:: e_corr_second_order

    File: :file:`e_corr_selectors.irp.f`

    Correlation energy per determinant with respect to the Hartree-Fock determinant for the all the double excitations in the selectors determinants. 

    E_corr_per_selectors(i) = :math:`\langle D_i | H | \text{HF}\rangle  c(D_i)/c(HF)` if :math:`| D_i \rangle` is a double excitation. 

    E_corr_per_selectors(i) = -1000.d0 if it is not a double excitation 

    coef_hf_selector = coefficient of the Hartree Fock determinant in the selectors determinants


 

.. c:var:: double_index_selectors

    .. code:: text

        integer, allocatable	:: exc_degree_per_selectors	(N_det_selectors)
        integer, allocatable	:: double_index_selectors	(N_det_selectors)
        integer	:: n_double_selectors

    File: :file:`e_corr_selectors.irp.f`

    Degree of excitation respect to Hartree Fock for the wave function for the all the selectors determinants. 

    double_index_selectors = list of the index of the double excitations 

    n_double_selectors = number of double excitations in the selectors determinants


 

.. c:var:: e_corr_double_only

    .. code:: text

        double precision	:: coef_hf_selector
        double precision	:: inv_selectors_coef_hf
        double precision	:: inv_selectors_coef_hf_squared
        double precision, allocatable	:: e_corr_per_selectors	(N_det_selectors)
        double precision, allocatable	:: i_h_hf_per_selectors	(N_det_selectors)
        double precision, allocatable	:: delta_e_per_selector	(N_det_selectors)
        double precision	:: e_corr_double_only
        double precision	:: e_corr_second_order

    File: :file:`e_corr_selectors.irp.f`

    Correlation energy per determinant with respect to the Hartree-Fock determinant for the all the double excitations in the selectors determinants. 

    E_corr_per_selectors(i) = :math:`\langle D_i | H | \text{HF}\rangle  c(D_i)/c(HF)` if :math:`| D_i \rangle` is a double excitation. 

    E_corr_per_selectors(i) = -1000.d0 if it is not a double excitation 

    coef_hf_selector = coefficient of the Hartree Fock determinant in the selectors determinants


 

.. c:var:: e_corr_per_selectors

    .. code:: text

        double precision	:: coef_hf_selector
        double precision	:: inv_selectors_coef_hf
        double precision	:: inv_selectors_coef_hf_squared
        double precision, allocatable	:: e_corr_per_selectors	(N_det_selectors)
        double precision, allocatable	:: i_h_hf_per_selectors	(N_det_selectors)
        double precision, allocatable	:: delta_e_per_selector	(N_det_selectors)
        double precision	:: e_corr_double_only
        double precision	:: e_corr_second_order

    File: :file:`e_corr_selectors.irp.f`

    Correlation energy per determinant with respect to the Hartree-Fock determinant for the all the double excitations in the selectors determinants. 

    E_corr_per_selectors(i) = :math:`\langle D_i | H | \text{HF}\rangle  c(D_i)/c(HF)` if :math:`| D_i \rangle` is a double excitation. 

    E_corr_per_selectors(i) = -1000.d0 if it is not a double excitation 

    coef_hf_selector = coefficient of the Hartree Fock determinant in the selectors determinants


 

.. c:var:: e_corr_second_order

    .. code:: text

        double precision	:: coef_hf_selector
        double precision	:: inv_selectors_coef_hf
        double precision	:: inv_selectors_coef_hf_squared
        double precision, allocatable	:: e_corr_per_selectors	(N_det_selectors)
        double precision, allocatable	:: i_h_hf_per_selectors	(N_det_selectors)
        double precision, allocatable	:: delta_e_per_selector	(N_det_selectors)
        double precision	:: e_corr_double_only
        double precision	:: e_corr_second_order

    File: :file:`e_corr_selectors.irp.f`

    Correlation energy per determinant with respect to the Hartree-Fock determinant for the all the double excitations in the selectors determinants. 

    E_corr_per_selectors(i) = :math:`\langle D_i | H | \text{HF}\rangle  c(D_i)/c(HF)` if :math:`| D_i \rangle` is a double excitation. 

    E_corr_per_selectors(i) = -1000.d0 if it is not a double excitation 

    coef_hf_selector = coefficient of the Hartree Fock determinant in the selectors determinants


 

.. c:var:: exc_degree_per_selectors

    .. code:: text

        integer, allocatable	:: exc_degree_per_selectors	(N_det_selectors)
        integer, allocatable	:: double_index_selectors	(N_det_selectors)
        integer	:: n_double_selectors

    File: :file:`e_corr_selectors.irp.f`

    Degree of excitation respect to Hartree Fock for the wave function for the all the selectors determinants. 

    double_index_selectors = list of the index of the double excitations 

    n_double_selectors = number of double excitations in the selectors determinants


 

.. c:var:: i_h_hf_per_selectors

    .. code:: text

        double precision	:: coef_hf_selector
        double precision	:: inv_selectors_coef_hf
        double precision	:: inv_selectors_coef_hf_squared
        double precision, allocatable	:: e_corr_per_selectors	(N_det_selectors)
        double precision, allocatable	:: i_h_hf_per_selectors	(N_det_selectors)
        double precision, allocatable	:: delta_e_per_selector	(N_det_selectors)
        double precision	:: e_corr_double_only
        double precision	:: e_corr_second_order

    File: :file:`e_corr_selectors.irp.f`

    Correlation energy per determinant with respect to the Hartree-Fock determinant for the all the double excitations in the selectors determinants. 

    E_corr_per_selectors(i) = :math:`\langle D_i | H | \text{HF}\rangle  c(D_i)/c(HF)` if :math:`| D_i \rangle` is a double excitation. 

    E_corr_per_selectors(i) = -1000.d0 if it is not a double excitation 

    coef_hf_selector = coefficient of the Hartree Fock determinant in the selectors determinants


 

.. c:var:: inv_selectors_coef_hf

    .. code:: text

        double precision	:: coef_hf_selector
        double precision	:: inv_selectors_coef_hf
        double precision	:: inv_selectors_coef_hf_squared
        double precision, allocatable	:: e_corr_per_selectors	(N_det_selectors)
        double precision, allocatable	:: i_h_hf_per_selectors	(N_det_selectors)
        double precision, allocatable	:: delta_e_per_selector	(N_det_selectors)
        double precision	:: e_corr_double_only
        double precision	:: e_corr_second_order

    File: :file:`e_corr_selectors.irp.f`

    Correlation energy per determinant with respect to the Hartree-Fock determinant for the all the double excitations in the selectors determinants. 

    E_corr_per_selectors(i) = :math:`\langle D_i | H | \text{HF}\rangle  c(D_i)/c(HF)` if :math:`| D_i \rangle` is a double excitation. 

    E_corr_per_selectors(i) = -1000.d0 if it is not a double excitation 

    coef_hf_selector = coefficient of the Hartree Fock determinant in the selectors determinants


 

.. c:var:: inv_selectors_coef_hf_squared

    .. code:: text

        double precision	:: coef_hf_selector
        double precision	:: inv_selectors_coef_hf
        double precision	:: inv_selectors_coef_hf_squared
        double precision, allocatable	:: e_corr_per_selectors	(N_det_selectors)
        double precision, allocatable	:: i_h_hf_per_selectors	(N_det_selectors)
        double precision, allocatable	:: delta_e_per_selector	(N_det_selectors)
        double precision	:: e_corr_double_only
        double precision	:: e_corr_second_order

    File: :file:`e_corr_selectors.irp.f`

    Correlation energy per determinant with respect to the Hartree-Fock determinant for the all the double excitations in the selectors determinants. 

    E_corr_per_selectors(i) = :math:`\langle D_i | H | \text{HF}\rangle  c(D_i)/c(HF)` if :math:`| D_i \rangle` is a double excitation. 

    E_corr_per_selectors(i) = -1000.d0 if it is not a double excitation 

    coef_hf_selector = coefficient of the Hartree Fock determinant in the selectors determinants


 

.. c:var:: n_double_selectors

    .. code:: text

        integer, allocatable	:: exc_degree_per_selectors	(N_det_selectors)
        integer, allocatable	:: double_index_selectors	(N_det_selectors)
        integer	:: n_double_selectors

    File: :file:`e_corr_selectors.irp.f`

    Degree of excitation respect to Hartree Fock for the wave function for the all the selectors determinants. 

    double_index_selectors = list of the index of the double excitations 

    n_double_selectors = number of double excitations in the selectors determinants


 

.. c:var:: psi_selectors_coef_transp

    .. code:: text

        double precision, allocatable	:: psi_selectors_coef_transp	(N_states,psi_selectors_size)

    File: :file:`selectors.irp.f`

    Transposed psi_selectors


 

.. c:var:: psi_selectors_diag_h_mat

    .. code:: text

        double precision, allocatable	:: psi_selectors_diag_h_mat	(psi_selectors_size)

    File: :file:`selectors.irp.f`

    Diagonal elements of the H matrix for each selectors


 

.. c:var:: psi_selectors_size

    .. code:: text

        integer	:: psi_selectors_size

    File: :file:`selectors.irp.f`

    


 
 
Subroutines / functions 
----------------------- 
 


.. c:function:: zmq_get_n_det_generators

    .. code:: text

        integer function zmq_get_N_det_generators(zmq_to_qp_run_socket, worker_id)

    File: :file:`zmq.irp.f_template_102`

    Get N_det_generators from the qp_run scheduler


 


.. c:function:: zmq_get_n_det_selectors

    .. code:: text

        integer function zmq_get_N_det_selectors(zmq_to_qp_run_socket, worker_id)

    File: :file:`zmq.irp.f_template_102`

    Get N_det_selectors from the qp_run scheduler


 


.. c:function:: zmq_put_n_det_generators

    .. code:: text

        integer function zmq_put_N_det_generators(zmq_to_qp_run_socket,worker_id)

    File: :file:`zmq.irp.f_template_102`

    Put N_det_generators on the qp_run scheduler


 


.. c:function:: zmq_put_n_det_selectors

    .. code:: text

        integer function zmq_put_N_det_selectors(zmq_to_qp_run_socket,worker_id)

    File: :file:`zmq.irp.f_template_102`

    Put N_det_selectors on the qp_run scheduler


