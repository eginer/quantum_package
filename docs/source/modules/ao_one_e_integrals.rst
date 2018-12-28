.. _ao_one_e_integrals:

.. program:: ao_one_e_integrals

.. default-role:: option

==================
AO_one_e_integrals
==================

All the one-electron integrals in the |AO| basis are here.

The most important providers for usual quantum-chemistry calculation are:  

# `ao_kinetic_integral` which are the kinetic operator integrals on the |AO| basis (see :file:`kin_ao_ints.irp.f`)
# `ao_nucl_elec_integral` which are the nuclear-elctron operator integrals on the |AO| basis (see :file:`pot_ao_ints.irp.f`)
# `ao_mono_elec_integral` which are the the h_core operator integrals on the |AO| basis (see :file:`ao_mono_ints.irp.f`)

Note that you can find other interesting integrals related to the position operator in :file:`spread_dipole_ao.irp.f`. 



EZFIO parameters
----------------

.. option:: integral_nuclear

    Nucleus-electron integrals in |AO| basis set


.. option:: integral_kinetic

    Kinetic energy integrals in |AO| basis set


.. option:: integral_pseudo

    Pseudopotential integrals in |AO| basis set


.. option:: integral_overlap

    Overlap integrals in |AO| basis set


.. option:: disk_access_ao_one_integrals

    Read/Write |AO| one-electron integrals from/to disk [ Write | Read | None ]

    Default: None


Providers
---------


.. c:var:: ao_cart_to_sphe_coef

    .. code:: text

        double precision, allocatable	:: ao_cart_to_sphe_coef	(ao_num,ao_num)
        integer	:: ao_cart_to_sphe_num

    File: :file:`ao_ortho_canonical.irp.f`

    Coefficients to go from cartesian to spherical coordinates in the current basis set




.. c:var:: ao_cart_to_sphe_inv

    .. code:: text

        double precision, allocatable	:: ao_cart_to_sphe_inv	(ao_cart_to_sphe_num,ao_num)

    File: :file:`ao_ortho_canonical.irp.f`

    Inverse of :c:var:`ao_cart_to_sphe_coef`




.. c:var:: ao_cart_to_sphe_num

    .. code:: text

        double precision, allocatable	:: ao_cart_to_sphe_coef	(ao_num,ao_num)
        integer	:: ao_cart_to_sphe_num

    File: :file:`ao_ortho_canonical.irp.f`

    Coefficients to go from cartesian to spherical coordinates in the current basis set




.. c:var:: ao_cart_to_sphe_overlap

    .. code:: text

        double precision, allocatable	:: ao_cart_to_sphe_overlap	(ao_cart_to_sphe_num,ao_cart_to_sphe_num)

    File: :file:`ao_ortho_canonical.irp.f`

    |AO| overlap matrix in the spherical basis set




.. c:var:: ao_deriv2_x

    .. code:: text

        double precision, allocatable	:: ao_deriv2_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv2_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv2_z	(ao_num,ao_num)

    File: :file:`kin_ao_ints.irp.f`

    Second derivative matrix elements in the |AO| basis. 
    :math:`{\tt ao_deriv2_x} = \langle \chi_i(x,y,z) | \frac{\partial^2}{\partial x^2} |\chi_j (x,y,z) \rangle` 





.. c:var:: ao_deriv2_y

    .. code:: text

        double precision, allocatable	:: ao_deriv2_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv2_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv2_z	(ao_num,ao_num)

    File: :file:`kin_ao_ints.irp.f`

    Second derivative matrix elements in the |AO| basis. 
    :math:`{\tt ao_deriv2_x} = \langle \chi_i(x,y,z) | \frac{\partial^2}{\partial x^2} |\chi_j (x,y,z) \rangle` 





.. c:var:: ao_deriv2_z

    .. code:: text

        double precision, allocatable	:: ao_deriv2_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv2_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv2_z	(ao_num,ao_num)

    File: :file:`kin_ao_ints.irp.f`

    Second derivative matrix elements in the |AO| basis. 
    :math:`{\tt ao_deriv2_x} = \langle \chi_i(x,y,z) | \frac{\partial^2}{\partial x^2} |\chi_j (x,y,z) \rangle` 





.. c:var:: ao_deriv_1_x

    .. code:: text

        double precision, allocatable	:: ao_deriv_1_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv_1_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv_1_z	(ao_num,ao_num)

    File: :file:`spread_dipole_ao.irp.f`

    * array of the integrals of AO_i * d/dx  AO_j 
    * array of the integrals of AO_i * d/dy  AO_j 
    * array of the integrals of AO_i * d/dz  AO_j




.. c:var:: ao_deriv_1_y

    .. code:: text

        double precision, allocatable	:: ao_deriv_1_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv_1_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv_1_z	(ao_num,ao_num)

    File: :file:`spread_dipole_ao.irp.f`

    * array of the integrals of AO_i * d/dx  AO_j 
    * array of the integrals of AO_i * d/dy  AO_j 
    * array of the integrals of AO_i * d/dz  AO_j




.. c:var:: ao_deriv_1_z

    .. code:: text

        double precision, allocatable	:: ao_deriv_1_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv_1_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_deriv_1_z	(ao_num,ao_num)

    File: :file:`spread_dipole_ao.irp.f`

    * array of the integrals of AO_i * d/dx  AO_j 
    * array of the integrals of AO_i * d/dy  AO_j 
    * array of the integrals of AO_i * d/dz  AO_j




.. c:var:: ao_dipole_x

    .. code:: text

        double precision, allocatable	:: ao_dipole_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_dipole_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_dipole_z	(ao_num,ao_num)

    File: :file:`spread_dipole_ao.irp.f`

    * array of the integrals of AO_i * x AO_j 
    * array of the integrals of AO_i * y AO_j 
    * array of the integrals of AO_i * z AO_j




.. c:var:: ao_dipole_y

    .. code:: text

        double precision, allocatable	:: ao_dipole_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_dipole_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_dipole_z	(ao_num,ao_num)

    File: :file:`spread_dipole_ao.irp.f`

    * array of the integrals of AO_i * x AO_j 
    * array of the integrals of AO_i * y AO_j 
    * array of the integrals of AO_i * z AO_j




.. c:var:: ao_dipole_z

    .. code:: text

        double precision, allocatable	:: ao_dipole_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_dipole_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_dipole_z	(ao_num,ao_num)

    File: :file:`spread_dipole_ao.irp.f`

    * array of the integrals of AO_i * x AO_j 
    * array of the integrals of AO_i * y AO_j 
    * array of the integrals of AO_i * z AO_j




.. c:var:: ao_kinetic_integral

    .. code:: text

        double precision, allocatable	:: ao_kinetic_integral	(ao_num,ao_num)

    File: :file:`kin_ao_ints.irp.f`

    Kinetic energy integrals in the |AO| basis. 
    :math:`\langle \chi_i |\hat{T}| \chi_j \rangle`




.. c:var:: ao_mono_elec_integral

    .. code:: text

        double precision, allocatable	:: ao_mono_elec_integral	(ao_num,ao_num)
        double precision, allocatable	:: ao_mono_elec_integral_diag	(ao_num)

    File: :file:`ao_mono_ints.irp.f`

    Array of the one-electron Hamiltonian on the |AO| basis.




.. c:var:: ao_mono_elec_integral_diag

    .. code:: text

        double precision, allocatable	:: ao_mono_elec_integral	(ao_num,ao_num)
        double precision, allocatable	:: ao_mono_elec_integral_diag	(ao_num)

    File: :file:`ao_mono_ints.irp.f`

    Array of the one-electron Hamiltonian on the |AO| basis.




.. c:var:: ao_nucl_elec_integral

    .. code:: text

        double precision, allocatable	:: ao_nucl_elec_integral	(ao_num,ao_num)

    File: :file:`pot_ao_ints.irp.f`

    Nucleus-electron interaction, in the |AO| basis set. 
    :math:`\langle \chi_i | -\sum_A \frac{1}{|r-R_A|} | \chi_j \rangle`




.. c:var:: ao_nucl_elec_integral_per_atom

    .. code:: text

        double precision, allocatable	:: ao_nucl_elec_integral_per_atom	(ao_num,ao_num,nucl_num)

    File: :file:`pot_ao_ints.irp.f`

    Nucleus-electron interaction in the |AO| basis set, per atom A. 
    :math:`\langle \chi_i | -\frac{1}{|r-R_A|} | \chi_j \rangle`




.. c:var:: ao_ortho_canonical_coef

    .. code:: text

        double precision, allocatable	:: ao_ortho_canonical_coef	(ao_num,ao_num)
        integer	:: ao_ortho_canonical_num

    File: :file:`ao_ortho_canonical.irp.f`

    matrix of the coefficients of the mos generated by the orthonormalization by the S^{-1/2} canonical transformation of the aos ao_ortho_canonical_coef(i,j) = coefficient of the ith ao on the jth ao_ortho_canonical orbital




.. c:var:: ao_ortho_canonical_coef_inv

    .. code:: text

        double precision, allocatable	:: ao_ortho_canonical_coef_inv	(ao_num,ao_num)

    File: :file:`ao_ortho_canonical.irp.f`

    ao_ortho_canonical_coef^(-1)




.. c:var:: ao_ortho_canonical_num

    .. code:: text

        double precision, allocatable	:: ao_ortho_canonical_coef	(ao_num,ao_num)
        integer	:: ao_ortho_canonical_num

    File: :file:`ao_ortho_canonical.irp.f`

    matrix of the coefficients of the mos generated by the orthonormalization by the S^{-1/2} canonical transformation of the aos ao_ortho_canonical_coef(i,j) = coefficient of the ith ao on the jth ao_ortho_canonical orbital




.. c:var:: ao_ortho_canonical_overlap

    .. code:: text

        double precision, allocatable	:: ao_ortho_canonical_overlap	(ao_ortho_canonical_num,ao_ortho_canonical_num)

    File: :file:`ao_ortho_canonical.irp.f`

    overlap matrix of the ao_ortho_canonical. Expected to be the Identity




.. c:var:: ao_overlap

    .. code:: text

        double precision, allocatable	:: ao_overlap	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_z	(ao_num,ao_num)

    File: :file:`ao_overlap.irp.f`

    Overlap between atomic basis functions: 
    :math:`\int \chi_i(r) \chi_j(r) dr`




.. c:var:: ao_overlap_abs

    .. code:: text

        double precision, allocatable	:: ao_overlap_abs	(ao_num,ao_num)

    File: :file:`ao_overlap.irp.f`

    Overlap between absolute values of atomic basis functions: 
    :math:`\int |\chi_i(r)| |\chi_j(r)| dr`




.. c:var:: ao_overlap_x

    .. code:: text

        double precision, allocatable	:: ao_overlap	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_z	(ao_num,ao_num)

    File: :file:`ao_overlap.irp.f`

    Overlap between atomic basis functions: 
    :math:`\int \chi_i(r) \chi_j(r) dr`




.. c:var:: ao_overlap_y

    .. code:: text

        double precision, allocatable	:: ao_overlap	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_z	(ao_num,ao_num)

    File: :file:`ao_overlap.irp.f`

    Overlap between atomic basis functions: 
    :math:`\int \chi_i(r) \chi_j(r) dr`




.. c:var:: ao_overlap_z

    .. code:: text

        double precision, allocatable	:: ao_overlap	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_overlap_z	(ao_num,ao_num)

    File: :file:`ao_overlap.irp.f`

    Overlap between atomic basis functions: 
    :math:`\int \chi_i(r) \chi_j(r) dr`




.. c:var:: ao_pseudo_integral

    .. code:: text

        double precision, allocatable	:: ao_pseudo_integral	(ao_num,ao_num)

    File: :file:`pot_ao_pseudo_ints.irp.f`

    Pseudo-potential integrals in the |AO| basis set.




.. c:var:: ao_pseudo_integral_local

    .. code:: text

        double precision, allocatable	:: ao_pseudo_integral_local	(ao_num,ao_num)

    File: :file:`pot_ao_pseudo_ints.irp.f`

    Local pseudo-potential




.. c:var:: ao_pseudo_integral_non_local

    .. code:: text

        double precision, allocatable	:: ao_pseudo_integral_non_local	(ao_num,ao_num)

    File: :file:`pot_ao_pseudo_ints.irp.f`

    Non-local pseudo-potential




.. c:var:: ao_spread_x

    .. code:: text

        double precision, allocatable	:: ao_spread_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_spread_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_spread_z	(ao_num,ao_num)

    File: :file:`spread_dipole_ao.irp.f`

    * array of the integrals of AO_i * x^2 AO_j 
    * array of the integrals of AO_i * y^2 AO_j 
    * array of the integrals of AO_i * z^2 AO_j




.. c:var:: ao_spread_y

    .. code:: text

        double precision, allocatable	:: ao_spread_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_spread_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_spread_z	(ao_num,ao_num)

    File: :file:`spread_dipole_ao.irp.f`

    * array of the integrals of AO_i * x^2 AO_j 
    * array of the integrals of AO_i * y^2 AO_j 
    * array of the integrals of AO_i * z^2 AO_j




.. c:var:: ao_spread_z

    .. code:: text

        double precision, allocatable	:: ao_spread_x	(ao_num,ao_num)
        double precision, allocatable	:: ao_spread_y	(ao_num,ao_num)
        double precision, allocatable	:: ao_spread_z	(ao_num,ao_num)

    File: :file:`spread_dipole_ao.irp.f`

    * array of the integrals of AO_i * x^2 AO_j 
    * array of the integrals of AO_i * y^2 AO_j 
    * array of the integrals of AO_i * z^2 AO_j




.. c:var:: i_x1_pol_mult_mono_elec

    .. code:: text

        recursive subroutine I_x1_pol_mult_mono_elec(a,c,R1x,R1xp,R2x,d,nd,n_pt_in)

    File: :file:`pot_ao_ints.irp.f`

    Recursive routine involved in the electron-nucleus potential




.. c:var:: i_x2_pol_mult_mono_elec

    .. code:: text

        recursive subroutine I_x2_pol_mult_mono_elec(c,R1x,R1xp,R2x,d,nd,dim)

    File: :file:`pot_ao_ints.irp.f`

    Recursive routine involved in the electron-nucleus potential




.. c:var:: pseudo_dz_k_transp

    .. code:: text

        double precision, allocatable	:: pseudo_v_k_transp	(pseudo_klocmax,nucl_num)
        integer, allocatable	:: pseudo_n_k_transp	(pseudo_klocmax,nucl_num)
        double precision, allocatable	:: pseudo_dz_k_transp	(pseudo_klocmax,nucl_num)

    File: :file:`pot_ao_pseudo_ints.irp.f`

    Transposed arrays for pseudopotentials




.. c:var:: pseudo_dz_kl_transp

    .. code:: text

        double precision, allocatable	:: pseudo_v_kl_transp	(pseudo_kmax,0:pseudo_lmax,nucl_num)
        integer, allocatable	:: pseudo_n_kl_transp	(pseudo_kmax,0:pseudo_lmax,nucl_num)
        double precision, allocatable	:: pseudo_dz_kl_transp	(pseudo_kmax,0:pseudo_lmax,nucl_num)

    File: :file:`pot_ao_pseudo_ints.irp.f`

    Transposed arrays for pseudopotentials




.. c:var:: pseudo_n_k_transp

    .. code:: text

        double precision, allocatable	:: pseudo_v_k_transp	(pseudo_klocmax,nucl_num)
        integer, allocatable	:: pseudo_n_k_transp	(pseudo_klocmax,nucl_num)
        double precision, allocatable	:: pseudo_dz_k_transp	(pseudo_klocmax,nucl_num)

    File: :file:`pot_ao_pseudo_ints.irp.f`

    Transposed arrays for pseudopotentials




.. c:var:: pseudo_n_kl_transp

    .. code:: text

        double precision, allocatable	:: pseudo_v_kl_transp	(pseudo_kmax,0:pseudo_lmax,nucl_num)
        integer, allocatable	:: pseudo_n_kl_transp	(pseudo_kmax,0:pseudo_lmax,nucl_num)
        double precision, allocatable	:: pseudo_dz_kl_transp	(pseudo_kmax,0:pseudo_lmax,nucl_num)

    File: :file:`pot_ao_pseudo_ints.irp.f`

    Transposed arrays for pseudopotentials




.. c:var:: pseudo_v_k_transp

    .. code:: text

        double precision, allocatable	:: pseudo_v_k_transp	(pseudo_klocmax,nucl_num)
        integer, allocatable	:: pseudo_n_k_transp	(pseudo_klocmax,nucl_num)
        double precision, allocatable	:: pseudo_dz_k_transp	(pseudo_klocmax,nucl_num)

    File: :file:`pot_ao_pseudo_ints.irp.f`

    Transposed arrays for pseudopotentials




.. c:var:: pseudo_v_kl_transp

    .. code:: text

        double precision, allocatable	:: pseudo_v_kl_transp	(pseudo_kmax,0:pseudo_lmax,nucl_num)
        integer, allocatable	:: pseudo_n_kl_transp	(pseudo_kmax,0:pseudo_lmax,nucl_num)
        double precision, allocatable	:: pseudo_dz_kl_transp	(pseudo_kmax,0:pseudo_lmax,nucl_num)

    File: :file:`pot_ao_pseudo_ints.irp.f`

    Transposed arrays for pseudopotentials




.. c:var:: read_ao_one_integrals

    .. code:: text

        logical	:: read_ao_one_integrals
        logical	:: write_ao_one_integrals

    File: :file:`read_write.irp.f`

    If |true|, read/write one-electrons from/to disk.




.. c:var:: s_half

    .. code:: text

        double precision, allocatable	:: s_half	(ao_num,ao_num)

    File: :file:`ao_overlap.irp.f`

    :math:`S^{1/2}`




.. c:var:: s_half_inv

    .. code:: text

        double precision, allocatable	:: s_half_inv	(AO_num,AO_num)

    File: :file:`ao_overlap.irp.f`

    :math:`X = S^{-1/2}` obtained by SVD




.. c:var:: s_inv

    .. code:: text

        double precision, allocatable	:: s_inv	(ao_num,ao_num)

    File: :file:`ao_overlap.irp.f`

    Inverse of the overlap matrix




.. c:var:: write_ao_one_integrals

    .. code:: text

        logical	:: read_ao_one_integrals
        logical	:: write_ao_one_integrals

    File: :file:`read_write.irp.f`

    If |true|, read/write one-electrons from/to disk.




Subroutines / functions
-----------------------



.. c:function:: give_all_erf_kl_ao

    .. code:: text

        subroutine give_all_erf_kl_ao(integrals_ao,mu_in,C_center)

    File: :file:`pot_ao_erf_ints.irp.f`

    subroutine that returs all integrals over r of type erf(mu_in * |r-C_center|)/|r-C_center|





.. c:function:: give_polynom_mult_center_mono_elec

    .. code:: text

        subroutine give_polynom_mult_center_mono_elec(A_center,B_center,alpha,beta,power_A,power_B,C_center,n_pt_in,d,n_pt_out)

    File: :file:`pot_ao_ints.irp.f`

    Returns the explicit polynomial in terms of the "t" variable of the following 
    :math:`I_x1(a_x, d_x,p,q) * I_x1(a_y, d_y,p,q) * I_x1(a_z, d_z,p,q)`





.. c:function:: give_polynom_mult_center_mono_elec_erf

    .. code:: text

        subroutine give_polynom_mult_center_mono_elec_erf(A_center,B_center,alpha,beta,power_A,power_B,C_center,n_pt_in,d,n_pt_out,mu_in)

    File: :file:`pot_ao_erf_ints.irp.f`

    





.. c:function:: give_polynom_mult_center_mono_elec_erf_opt

    .. code:: text

        subroutine give_polynom_mult_center_mono_elec_erf_opt(A_center,B_center,alpha,beta,power_A,power_B,C_center,n_pt_in,d,n_pt_out,mu_in,p,p_inv,p_inv_2,p_new,P_center)

    File: :file:`pot_ao_erf_ints.irp.f`

    





.. c:function:: int_gaus_pol

    .. code:: text

        double precision function int_gaus_pol(alpha,n)

    File: :file:`pot_ao_ints.irp.f`

    Computes the integral: 
    :math:`\int_{-\infty}^{\infty} x^n \exp(-\alpha x^2) dx`





.. c:function:: nai_pol_mult

    .. code:: text

        double precision function NAI_pol_mult(A_center,B_center,power_A,power_B,alpha,beta,C_center,n_pt_in)

    File: :file:`pot_ao_ints.irp.f`

    Computes the electron-nucleus attraction with two primitves. 
    :math:`\langle g_i | \frac{1}{|r-R_c|} | g_j \rangle`





.. c:function:: nai_pol_mult_erf

    .. code:: text

        double precision function NAI_pol_mult_erf(A_center,B_center,power_A,power_B,alpha,beta,C_center,n_pt_in,mu_in)

    File: :file:`pot_ao_erf_ints.irp.f`

    





.. c:function:: nai_pol_mult_erf_ao

    .. code:: text

        double precision function NAI_pol_mult_erf_ao(i_ao,j_ao,mu_in,C_center)

    File: :file:`pot_ao_erf_ints.irp.f`

    computes the following integral : int[-infty;+infty] dr AO_i_ao (r) AO_j_ao(r) erf(mu_in * |r-C_center|)/|r-C_center|





.. c:function:: overlap_bourrin_deriv_x

    .. code:: text

        subroutine overlap_bourrin_deriv_x(i_component,A_center,B_center,alpha,beta,power_A,power_B,dx,lower_exp_val,overlap_x,nx)

    File: :file:`spread_dipole_ao.irp.f`

    





.. c:function:: overlap_bourrin_dipole

    .. code:: text

        subroutine overlap_bourrin_dipole(A_center,B_center,alpha,beta,power_A,power_B,overlap_x,lower_exp_val,dx,nx)

    File: :file:`spread_dipole_ao.irp.f`

    





.. c:function:: overlap_bourrin_spread

    .. code:: text

        subroutine overlap_bourrin_spread(A_center,B_center,alpha,beta,power_A,power_B,overlap_x,lower_exp_val,dx,nx)

    File: :file:`spread_dipole_ao.irp.f`

    Computes the following integral : int [-infty ; +infty] of [(x-A_center)^(power_A) * (x-B_center)^power_B * exp(-alpha(x-A_center)^2) * exp(-beta(x-B_center)^2) * x ] needed for the dipole and those things





.. c:function:: overlap_bourrin_x

    .. code:: text

        subroutine overlap_bourrin_x(A_center,B_center,alpha,beta,power_A,power_B,overlap_x,lower_exp_val,dx,nx)

    File: :file:`spread_dipole_ao.irp.f`

    





.. c:function:: v_e_n

    .. code:: text

        double precision function V_e_n(a_x,a_y,a_z,b_x,b_y,b_z,alpha,beta)

    File: :file:`pot_ao_ints.irp.f`

    Primitve nuclear attraction between the two primitves centered on the same atom. 
    primitive_1 = x**(a_x) y**(a_y) z**(a_z) exp(-alpha * r**2) 
    primitive_2 = x**(b_x) y**(b_y) z**(b_z) exp(- beta * r**2)





.. c:function:: v_phi

    .. code:: text

        double precision function V_phi(n,m)

    File: :file:`pot_ao_ints.irp.f`

    Computes the angular "phi" part of the nuclear attraction integral: 
    :math:`\int_{0}^{2 \pi} \cos(\phi)^n \sin(\phi)^m d\phi`





.. c:function:: v_r

    .. code:: text

        double precision function V_r(n,alpha)

    File: :file:`pot_ao_ints.irp.f`

    Computes the radial part of the nuclear attraction integral: 
    :math:`\int_{0}^{\infty} r^n  \exp(-\alpha  r^2)  dr` 






.. c:function:: v_theta

    .. code:: text

        double precision function V_theta(n,m)

    File: :file:`pot_ao_ints.irp.f`

    Computes the angular "theta" part of the nuclear attraction integral: 
    :math:`\int_{0}^{\pi} \cos(\theta)^n \sin(\theta)^m d\theta`





.. c:function:: wallis

    .. code:: text

        double precision function Wallis(n)

    File: :file:`pot_ao_ints.irp.f`

    Wallis integral: 
    :math:`\int_{0}^{\pi} \cos(\theta)^n d\theta`


