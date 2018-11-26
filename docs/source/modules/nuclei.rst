.. _nuclei:

.. program:: nuclei

.. default-role:: option

======
Nuclei
======

This module contains data relative to the nuclei (coordinates, charge,
nuclear repulsion energy, etc).
The coordinates are expressed in atomic units.




EZFIO parameters
----------------

.. option:: nucl_num

    Number of nuclei


.. option:: nucl_label

    Nuclear labels


.. option:: nucl_charge

    Nuclear charges


.. option:: nucl_coord

    Nuclear coordinates in the format (:, {x,y,z})


.. option:: disk_access_nuclear_repulsion

    Read/Write Nuclear Repulsion from/to disk [ Write | Read | None ]

    Default: None

.. option:: nuclear_repulsion

    Nuclear repulsion (Computed automaticaly or Read in the |EZFIO|)



Providers
---------


.. c:var:: center_of_mass

    .. code:: text

        double precision, allocatable	:: center_of_mass	(3)

    File: :file:`nuclei.irp.f`

    Center of mass of the molecule




.. c:var:: element_mass

    .. code:: text

        character*(4), allocatable	:: element_name	(0:127)
        double precision, allocatable	:: element_mass	(0:127)

    File: :file:`nuclei.irp.f`

    Array of the name of element, sorted by nuclear charge (integer)




.. c:var:: element_name

    .. code:: text

        character*(4), allocatable	:: element_name	(0:127)
        double precision, allocatable	:: element_mass	(0:127)

    File: :file:`nuclei.irp.f`

    Array of the name of element, sorted by nuclear charge (integer)




.. c:var:: inertia_tensor

    .. code:: text

        double precision, allocatable	:: inertia_tensor	(3,3)

    File: :file:`inertia.irp.f`

    Inertia tensor




.. c:var:: inertia_tensor_eigenvalues

    .. code:: text

        double precision, allocatable	:: inertia_tensor_eigenvectors	(3,3)
        double precision, allocatable	:: inertia_tensor_eigenvalues	(3)

    File: :file:`inertia.irp.f`

    Eigenvectors/eigenvalues of the inertia_tensor. Used to find normal orientation.




.. c:var:: inertia_tensor_eigenvectors

    .. code:: text

        double precision, allocatable	:: inertia_tensor_eigenvectors	(3,3)
        double precision, allocatable	:: inertia_tensor_eigenvalues	(3)

    File: :file:`inertia.irp.f`

    Eigenvectors/eigenvalues of the inertia_tensor. Used to find normal orientation.




.. c:var:: nucl_coord

    .. code:: text

        double precision, allocatable	:: nucl_coord	(nucl_num,3)

    File: :file:`nuclei.irp.f`

    Nuclear coordinates in the format (:, {x,y,z})




.. c:var:: nucl_coord_transp

    .. code:: text

        double precision, allocatable	:: nucl_coord_transp	(3,nucl_num)

    File: :file:`nuclei.irp.f`

    Transposed array of nucl_coord




.. c:var:: nucl_dist

    .. code:: text

        double precision, allocatable	:: nucl_dist_2	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_x	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_y	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_z	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist	(nucl_num,nucl_num)

    File: :file:`nuclei.irp.f`

    nucl_dist     : Nucleus-nucleus distances nucl_dist_2   : Nucleus-nucleus distances squared nucl_dist_vec : Nucleus-nucleus distances vectors




.. c:var:: nucl_dist_2

    .. code:: text

        double precision, allocatable	:: nucl_dist_2	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_x	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_y	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_z	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist	(nucl_num,nucl_num)

    File: :file:`nuclei.irp.f`

    nucl_dist     : Nucleus-nucleus distances nucl_dist_2   : Nucleus-nucleus distances squared nucl_dist_vec : Nucleus-nucleus distances vectors




.. c:var:: nucl_dist_vec_x

    .. code:: text

        double precision, allocatable	:: nucl_dist_2	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_x	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_y	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_z	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist	(nucl_num,nucl_num)

    File: :file:`nuclei.irp.f`

    nucl_dist     : Nucleus-nucleus distances nucl_dist_2   : Nucleus-nucleus distances squared nucl_dist_vec : Nucleus-nucleus distances vectors




.. c:var:: nucl_dist_vec_y

    .. code:: text

        double precision, allocatable	:: nucl_dist_2	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_x	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_y	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_z	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist	(nucl_num,nucl_num)

    File: :file:`nuclei.irp.f`

    nucl_dist     : Nucleus-nucleus distances nucl_dist_2   : Nucleus-nucleus distances squared nucl_dist_vec : Nucleus-nucleus distances vectors




.. c:var:: nucl_dist_vec_z

    .. code:: text

        double precision, allocatable	:: nucl_dist_2	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_x	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_y	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist_vec_z	(nucl_num,nucl_num)
        double precision, allocatable	:: nucl_dist	(nucl_num,nucl_num)

    File: :file:`nuclei.irp.f`

    nucl_dist     : Nucleus-nucleus distances nucl_dist_2   : Nucleus-nucleus distances squared nucl_dist_vec : Nucleus-nucleus distances vectors




.. c:var:: nuclear_repulsion

    .. code:: text

        double precision	:: nuclear_repulsion

    File: :file:`nuclei.irp.f`

    Nuclear repulsion energy




.. c:var:: positive_charge_barycentre

    .. code:: text

        double precision, allocatable	:: positive_charge_barycentre	(3)

    File: :file:`nuclei.irp.f`

    Centroid of the positive charges




.. c:var:: slater_bragg_radii

    .. code:: text

        double precision, allocatable	:: slater_bragg_radii	(100)

    File: :file:`atomic_radii.irp.f`

    atomic radii in Angstrom defined in table I of JCP 41, 3199 (1964) Slater execpt for the Hydrogen atom where we took the value of Becke (1988, JCP)




.. c:var:: slater_bragg_radii_per_atom

    .. code:: text

        double precision, allocatable	:: slater_bragg_radii_per_atom	(nucl_num)

    File: :file:`atomic_radii.irp.f`

    




.. c:var:: slater_bragg_radii_per_atom_ua

    .. code:: text

        double precision, allocatable	:: slater_bragg_radii_per_atom_ua	(nucl_num)

    File: :file:`atomic_radii.irp.f`

    




.. c:var:: slater_bragg_radii_ua

    .. code:: text

        double precision, allocatable	:: slater_bragg_radii_ua	(100)

    File: :file:`atomic_radii.irp.f`

    




.. c:var:: slater_bragg_type_inter_distance

    .. code:: text

        double precision, allocatable	:: slater_bragg_type_inter_distance	(nucl_num,nucl_num)

    File: :file:`atomic_radii.irp.f`

    




.. c:var:: slater_bragg_type_inter_distance_ua

    .. code:: text

        double precision, allocatable	:: slater_bragg_type_inter_distance_ua	(nucl_num,nucl_num)

    File: :file:`atomic_radii.irp.f`

    


