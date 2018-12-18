.. _ao_basis:

.. program:: ao_basis

.. default-role:: option

========
AO_Basis
========

This module describes the atomic orbitals basis set.

An |AO| :math:`\chi` centered on nucleus A is represented as:

.. math::

   \chi_i({\bf r}) = (x-X_A)^a (y-Y_A)^b (z-Z_A)^c \sum_k c_{ki} e^{-\gamma_{ki} |{\bf r} - {\bf R}_A|^2}


The |AO| coefficients are normalized as:

.. math::

  {\tilde c}_{ki} = \frac{c_{ki}}{ \int \left( (x-X_A)^a (y-Y_A)^b (z-Z_A)^c  e^{-\gamma_{ki} |{\bf r} - {\bf R}_A|^2} \right)^2 dr}

Warning: `ao_coef` contains the |AO| coefficients given in input. These do not
include the normalization constant of the |AO|. The `ao_coef_normalized` provider includes
this normalization factor.

The |AOs| are also sorted by increasing exponent to accelerate the calculation of
the two electron integrals.






EZFIO parameters
----------------

.. option:: ao_basis

    Name of the |AO| basis set


.. option:: ao_num

    Number of |AOs|


.. option:: ao_prim_num

    Number of primitives per |AO|


.. option:: ao_prim_num_max

    Maximum number of primitives

    Default: =maxval(ao_basis.ao_prim_num)

.. option:: ao_nucl

    Index of the nucleus on which the |AO| is centered


.. option:: ao_power

    Powers of x, y and z for each |AO|


.. option:: ao_coef

    Primitive coefficients, read from input. Those should not be used directly, as the MOs are expressed on the basis of **normalized** AOs.


.. option:: ao_expo

    Exponents for each primitive of each |AO|


.. option:: ao_md5

    MD5 key, specific of the |AO| basis


.. option:: ao_cartesian

    If |true|, use |AOs| in Cartesian coordinates (6d,10f,...)

    Default: false


Providers
---------


.. c:var:: ao_coef_normalization_factor

    .. code:: text

        double precision, allocatable	:: ao_coef_normalized	(ao_num,ao_prim_num_max)
        double precision, allocatable	:: ao_coef_normalization_factor	(ao_num)

    File: :file:`aos.irp.f`

    Coefficients including the |AO| normalization




.. c:var:: ao_coef_normalization_libint_factor

    .. code:: text

        double precision, allocatable	:: ao_coef_normalization_libint_factor	(ao_num)

    File: :file:`aos.irp.f`

    |AO| normalization for interfacing with libint




.. c:var:: ao_coef_normalized

    .. code:: text

        double precision, allocatable	:: ao_coef_normalized	(ao_num,ao_prim_num_max)
        double precision, allocatable	:: ao_coef_normalization_factor	(ao_num)

    File: :file:`aos.irp.f`

    Coefficients including the |AO| normalization




.. c:var:: ao_coef_normalized_ordered

    .. code:: text

        double precision, allocatable	:: ao_coef_normalized_ordered	(ao_num,ao_prim_num_max)
        double precision, allocatable	:: ao_expo_ordered	(ao_num,ao_prim_num_max)

    File: :file:`aos.irp.f`

    Sorted primitives to accelerate 4 index |MO| transformation




.. c:var:: ao_coef_normalized_ordered_transp

    .. code:: text

        double precision, allocatable	:: ao_coef_normalized_ordered_transp	(ao_prim_num_max,ao_num)

    File: :file:`aos.irp.f`

    Transposed :c:var:`ao_coef_normalized_ordered`




.. c:var:: ao_expo_ordered

    .. code:: text

        double precision, allocatable	:: ao_coef_normalized_ordered	(ao_num,ao_prim_num_max)
        double precision, allocatable	:: ao_expo_ordered	(ao_num,ao_prim_num_max)

    File: :file:`aos.irp.f`

    Sorted primitives to accelerate 4 index |MO| transformation




.. c:var:: ao_expo_ordered_transp

    .. code:: text

        double precision, allocatable	:: ao_expo_ordered_transp	(ao_prim_num_max,ao_num)

    File: :file:`aos.irp.f`

    Transposed :c:var:`ao_expo_ordered`




.. c:var:: ao_l

    .. code:: text

        integer, allocatable	:: ao_l	(ao_num)
        integer	:: ao_l_max
        character*(128), allocatable	:: ao_l_char	(ao_num)

    File: :file:`aos.irp.f`

    :math:`l` value of the |AO|: :math`a+b+c` in :math:`x^a y^b z^c`




.. c:var:: ao_l_char

    .. code:: text

        integer, allocatable	:: ao_l	(ao_num)
        integer	:: ao_l_max
        character*(128), allocatable	:: ao_l_char	(ao_num)

    File: :file:`aos.irp.f`

    :math:`l` value of the |AO|: :math`a+b+c` in :math:`x^a y^b z^c`




.. c:var:: ao_l_char_space

    .. code:: text

        character*(4), allocatable	:: ao_l_char_space	(ao_num)

    File: :file:`aos.irp.f`

    Converts an l value to a string




.. c:var:: ao_l_max

    .. code:: text

        integer, allocatable	:: ao_l	(ao_num)
        integer	:: ao_l_max
        character*(128), allocatable	:: ao_l_char	(ao_num)

    File: :file:`aos.irp.f`

    :math:`l` value of the |AO|: :math`a+b+c` in :math:`x^a y^b z^c`




.. c:var:: ao_prim_num_max

    .. code:: text

        integer	:: ao_prim_num_max

    File: :file:`aos.irp.f`

    Max number of primitives.




.. c:var:: cart_to_sphe_0

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_0	(1,1)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=0




.. c:var:: cart_to_sphe_1

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_1	(3,3)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=1




.. c:var:: cart_to_sphe_2

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_2	(6,5)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=2




.. c:var:: cart_to_sphe_3

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_3	(10,7)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=3




.. c:var:: cart_to_sphe_4

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_4	(15,9)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=4




.. c:var:: cart_to_sphe_5

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_5	(21,11)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=5




.. c:var:: cart_to_sphe_6

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_6	(28,13)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=6




.. c:var:: cart_to_sphe_7

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_7	(36,15)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=7




.. c:var:: cart_to_sphe_8

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_8	(45,17)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=8




.. c:var:: cart_to_sphe_9

    .. code:: text

        double precision, allocatable	:: cart_to_sphe_9	(55,19)

    File: :file:`spherical_to_cartesian.irp.f`

    Spherical -> Cartesian Transformation matrix for l=9




.. c:var:: l_to_charater

    .. code:: text

        character*(128), allocatable	:: l_to_charater	(0:7)

    File: :file:`aos.irp.f`

    Character corresponding to the "l" value of an |AO|




.. c:var:: n_aos_max

    .. code:: text

        integer, allocatable	:: nucl_n_aos	(nucl_num)
        integer	:: n_aos_max

    File: :file:`aos.irp.f`

    Number of |AOs| per atom




.. c:var:: n_pt_max_i_x

    .. code:: text

        integer	:: n_pt_max_integrals
        integer	:: n_pt_max_i_x

    File: :file:`dimensions_integrals.irp.f`

    Number of points used in the numerical integrations.




.. c:var:: n_pt_max_integrals

    .. code:: text

        integer	:: n_pt_max_integrals
        integer	:: n_pt_max_i_x

    File: :file:`dimensions_integrals.irp.f`

    Number of points used in the numerical integrations.




.. c:var:: nucl_aos

    .. code:: text

        integer, allocatable	:: nucl_aos	(nucl_num,N_AOs_max)

    File: :file:`aos.irp.f`

    List of |AOs| centered on each atom




.. c:var:: nucl_list_shell_aos

    .. code:: text

        integer, allocatable	:: nucl_list_shell_aos	(nucl_num,N_AOs_max)
        integer, allocatable	:: nucl_num_shell_aos	(nucl_num)

    File: :file:`aos.irp.f`

    Index of the shell type |AOs| and of the corresponding |AOs| By convention, for p,d,f and g |AOs|, we take the index of the |AO| with the the corresponding power in the x axis




.. c:var:: nucl_n_aos

    .. code:: text

        integer, allocatable	:: nucl_n_aos	(nucl_num)
        integer	:: n_aos_max

    File: :file:`aos.irp.f`

    Number of |AOs| per atom




.. c:var:: nucl_num_shell_aos

    .. code:: text

        integer, allocatable	:: nucl_list_shell_aos	(nucl_num,N_AOs_max)
        integer, allocatable	:: nucl_num_shell_aos	(nucl_num)

    File: :file:`aos.irp.f`

    Index of the shell type |AOs| and of the corresponding |AOs| By convention, for p,d,f and g |AOs|, we take the index of the |AO| with the the corresponding power in the x axis




Subroutines / functions
-----------------------



.. c:function:: ao_power_index

    .. code:: text

        integer function ao_power_index(nx,ny,nz)

    File: :file:`aos.irp.f`

    Unique index given to a triplet of powers: 
    :math:`\frac{1}{2} (l-n_x) (l-n_x+1) + n_z + 1`





.. c:function:: ao_value

    .. code:: text

        double precision function ao_value(i,r)

    File: :file:`aos_value.irp.f`

    Returns the value of the i-th |AO| at point r





.. c:function:: give_all_aos_at_r

    .. code:: text

        subroutine give_all_aos_at_r(r,aos_array)

    File: :file:`aos_value.irp.f`

    Gives the values of |AOs| at a given point r


