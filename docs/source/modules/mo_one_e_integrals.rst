.. _mo_one_e_integrals:

.. program:: mo_one_e_integrals

.. default-role:: option

==================
mo_one_e_integrals
==================

All the one-electron integrals in |MO| basis are defined here.

The most important providers for usual quantum-chemistry calculation are:  

# `mo_kinetic_integral` which are the kinetic operator integrals on the |AO| basis (see :file:`kin_mo_ints.irp.f`)
# `mo_nucl_elec_integral` which are the nuclear-elctron operator integrals on the |AO| basis (see :file:`pot_mo_ints.irp.f`)
# `mo_mono_elec_integral` which are the the h_core operator integrals on the |AO| basis (see :file:`mo_mono_ints.irp.f`)

Note that you can find other interesting integrals related to the position operator in :file:`spread_dipole_mo.irp.f`. 



EZFIO parameters
----------------

.. option:: integral_nuclear

    Nucleus-electron integrals in |MO| basis set


.. option:: integral_kinetic

    Kinetic energy integrals in |MO| basis set


.. option:: integral_pseudo

    Pseudopotential integrals in |MO| basis set


.. option:: disk_access_mo_one_integrals

    Read/Write |MO| one-electron integrals from/to disk [ Write | Read | None ]

    Default: None


Providers
---------


.. c:var:: mo_dipole_x

    .. code:: text

        double precision, allocatable	:: mo_dipole_x	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_dipole_y	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_dipole_z	(mo_tot_num,mo_tot_num)

    File: :file:`spread_dipole_mo.irp.f`

    array of the integrals of MO_i * x MO_j array of the integrals of MO_i * y MO_j array of the integrals of MO_i * z MO_j




.. c:var:: mo_dipole_y

    .. code:: text

        double precision, allocatable	:: mo_dipole_x	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_dipole_y	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_dipole_z	(mo_tot_num,mo_tot_num)

    File: :file:`spread_dipole_mo.irp.f`

    array of the integrals of MO_i * x MO_j array of the integrals of MO_i * y MO_j array of the integrals of MO_i * z MO_j




.. c:var:: mo_dipole_z

    .. code:: text

        double precision, allocatable	:: mo_dipole_x	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_dipole_y	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_dipole_z	(mo_tot_num,mo_tot_num)

    File: :file:`spread_dipole_mo.irp.f`

    array of the integrals of MO_i * x MO_j array of the integrals of MO_i * y MO_j array of the integrals of MO_i * z MO_j




.. c:var:: mo_kinetic_integral

    .. code:: text

        double precision, allocatable	:: mo_kinetic_integral	(mo_tot_num,mo_tot_num)

    File: :file:`kin_mo_ints.irp.f`

    Kinetic energy integrals in the MO basis




.. c:var:: mo_mono_elec_integral

    .. code:: text

        double precision, allocatable	:: mo_mono_elec_integral	(mo_tot_num,mo_tot_num)

    File: :file:`mo_mono_ints.irp.f`

    array of the mono electronic hamiltonian on the MOs basis : sum of the kinetic and nuclear electronic potential (and pseudo potential if needed)




.. c:var:: mo_nucl_elec_integral

    .. code:: text

        double precision, allocatable	:: mo_nucl_elec_integral	(mo_tot_num,mo_tot_num)

    File: :file:`pot_mo_ints.irp.f`

    interaction nuclear electron on the MO basis




.. c:var:: mo_nucl_elec_integral_per_atom

    .. code:: text

        double precision, allocatable	:: mo_nucl_elec_integral_per_atom	(mo_tot_num,mo_tot_num,nucl_num)

    File: :file:`pot_mo_ints.irp.f`

    mo_nucl_elec_integral_per_atom(i,j,k) = -<MO(i)|1/|r-Rk|MO(j)> where Rk is the geometry of the kth atom




.. c:var:: mo_overlap

    .. code:: text

        double precision, allocatable	:: mo_overlap	(mo_tot_num,mo_tot_num)

    File: :file:`mo_overlap.irp.f`

    




.. c:var:: mo_pseudo_integral

    .. code:: text

        double precision, allocatable	:: mo_pseudo_integral	(mo_tot_num,mo_tot_num)

    File: :file:`pot_mo_pseudo_ints.irp.f`

    interaction nuclear electron on the MO basis




.. c:var:: mo_spread_x

    .. code:: text

        double precision, allocatable	:: mo_spread_x	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_spread_y	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_spread_z	(mo_tot_num,mo_tot_num)

    File: :file:`spread_dipole_mo.irp.f`

    array of the integrals of MO_i * x^2 MO_j array of the integrals of MO_i * y^2 MO_j array of the integrals of MO_i * z^2 MO_j




.. c:var:: mo_spread_y

    .. code:: text

        double precision, allocatable	:: mo_spread_x	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_spread_y	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_spread_z	(mo_tot_num,mo_tot_num)

    File: :file:`spread_dipole_mo.irp.f`

    array of the integrals of MO_i * x^2 MO_j array of the integrals of MO_i * y^2 MO_j array of the integrals of MO_i * z^2 MO_j




.. c:var:: mo_spread_z

    .. code:: text

        double precision, allocatable	:: mo_spread_x	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_spread_y	(mo_tot_num,mo_tot_num)
        double precision, allocatable	:: mo_spread_z	(mo_tot_num,mo_tot_num)

    File: :file:`spread_dipole_mo.irp.f`

    array of the integrals of MO_i * x^2 MO_j array of the integrals of MO_i * y^2 MO_j array of the integrals of MO_i * z^2 MO_j




.. c:var:: read_mo_one_integrals

    .. code:: text

        logical	:: read_mo_one_integrals
        logical	:: write_mo_one_integrals

    File: :file:`read_write.irp.f`

    One level of abstraction for disk_access_mo_integrals




.. c:var:: s_mo_coef

    .. code:: text

        double precision, allocatable	:: s_mo_coef	(ao_num,mo_tot_num)

    File: :file:`ao_to_mo.irp.f`

    Product S.C where S is the overlap matrix in the AO basis and C the mo_coef matrix.




.. c:var:: write_mo_one_integrals

    .. code:: text

        logical	:: read_mo_one_integrals
        logical	:: write_mo_one_integrals

    File: :file:`read_write.irp.f`

    One level of abstraction for disk_access_mo_integrals




Subroutines / functions
-----------------------



.. c:function:: mo_to_ao

    .. code:: text

        subroutine mo_to_ao(A_mo,LDA_mo,A_ao,LDA_ao)

    File: :file:`ao_to_mo.irp.f`

    Transform A from the MO basis to the AO basis 
    (S.C).A_mo.(S.C)t





.. c:function:: orthonormalize_mos

    .. code:: text

        subroutine orthonormalize_mos

    File: :file:`orthonormalize.irp.f`

    


