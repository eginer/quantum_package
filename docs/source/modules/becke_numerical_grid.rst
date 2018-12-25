.. _becke_numerical_grid:

.. program:: becke_numerical_grid

.. default-role:: option

====================
Becke Numerical Grid
====================

This module contains all quantities needed to build the Becke's grid used in general for DFT integration. Note that it can be used for whatever integration in R^3 as long as the functions to be integrated are mostly concentrated near the atomic regions. 

This grid is built as the reunion of a spherical grid around each atom. Each spherical grid contains a certain number of radial and angular points. 

For a simple example of how to use the grid, see :file:`example.irp.f`. 

The spherical integration uses Lebedev-Laikov grids, which was used from the code distributed through CCL (http://www.ccl.net/). 
See next section for explanations and citation policies. 

.. code-block:: text

       This subroutine is part of a set of subroutines that generate
       Lebedev grids [1-6] for integration on a sphere. The original 
       C-code [1] was kindly provided by Dr. Dmitri N. Laikov and 
       translated into fortran by Dr. Christoph van Wuellen.
       This subroutine was translated using a C to fortran77 conversion
       tool written by Dr. Christoph van Wuellen.
    
       Users of this code are asked to include reference [1] in their
       publications, and in the user- and programmers-manuals 
       describing their codes.
    
       This code was distributed through CCL (http://www.ccl.net/).
    
       [1] V.I. Lebedev, and D.N. Laikov
           "A quadrature formula for the sphere of the 131st
            algebraic order of accuracy"
           Doklady Mathematics, Vol. 59, No. 3, 1999, pp. 477-481.
    
       [2] V.I. Lebedev
           "A quadrature formula for the sphere of 59th algebraic
            order of accuracy"
           Russian Acad. Sci. Dokl. Math., Vol. 50, 1995, pp. 283-286. 
    
       [3] V.I. Lebedev, and A.L. Skorokhodov
           "Quadrature formulas of orders 41, 47, and 53 for the sphere"
           Russian Acad. Sci. Dokl. Math., Vol. 45, 1992, pp. 587-592. 
    
       [4] V.I. Lebedev
           "Spherical quadrature formulas exact to orders 25-29"
           Siberian Mathematical Journal, Vol. 18, 1977, pp. 99-107. 
    
       [5] V.I. Lebedev
           "Quadratures on a sphere"
           Computational Mathematics and Mathematical Physics, Vol. 16,
           1976, pp. 10-24. 
    
       [6] V.I. Lebedev
           "Values of the nodes and weights of ninth to seventeenth 
            order Gauss-Markov quadrature formulae invariant under the
            octahedron group with inversion"
           Computational Mathematics and Mathematical Physics, Vol. 15,
           1975, pp. 44-51.
    




EZFIO parameters
----------------

.. option:: n_points_integration_angular

    Number of angular points per atom for 3d numerical integration, needed for DFT for example [ 50 | 74 | 266 | 590 | 1202 | 2030 | 5810 ]

    Default: 590

.. option:: n_points_radial_grid

    Number of radial points per atom for 3d numerical integration, needed for DFT for example

    Default: 60


Providers
---------


.. c:var:: alpha_knowles

    .. code:: text

        double precision, allocatable	:: alpha_knowles	(100)

    File: :file:`integration_radial.irp.f`

    Recommended values for the alpha parameters according to the paper of Knowles (JCP, 104, 1996) as a function of the nuclear charge




.. c:var:: angular_quadrature_points

    .. code:: text

        double precision, allocatable	:: angular_quadrature_points	(n_points_integration_angular,3)
        double precision, allocatable	:: weights_angular_points	(n_points_integration_angular)

    File: :file:`grid_becke.irp.f`

    weights and grid points for the integration on the angular variables on the unit sphere centered on (0,0,0) According to the LEBEDEV scheme




.. c:var:: dr_radial_integral

    .. code:: text

        double precision, allocatable	:: grid_points_radial	(n_points_radial_grid)
        double precision	:: dr_radial_integral

    File: :file:`grid_becke.irp.f`

    points in [0,1] to map the radial integral [0,\infty]




.. c:var:: final_grid_points

    .. code:: text

        double precision, allocatable	:: final_grid_points	(3,n_points_final_grid)
        double precision, allocatable	:: final_weight_functions_at_final_grid_points	(n_points_final_grid)
        integer, allocatable	:: index_final_points	(3,n_points_final_grid)
        integer, allocatable	:: index_final_points_reverse	(n_points_integration_angular,n_points_radial_grid,nucl_num)

    File: :file:`grid_becke_vector.irp.f`

    final_grid_points(1:3,j) = (/ x, y, z /) of the jth grid point 
    final_weight_functions_at_final_grid_points(i) = Total weight function of the ith grid point which contains the Lebedev, Voronoi and radial weights contributions 
    index_final_points(1:3,i) = gives the angular, radial and atomic indices associated to the ith grid point 
    index_final_points_reverse(i,j,k) = index of the grid point having i as angular, j as radial and l as atomic indices




.. c:var:: final_weight_functions_at_final_grid_points

    .. code:: text

        double precision, allocatable	:: final_grid_points	(3,n_points_final_grid)
        double precision, allocatable	:: final_weight_functions_at_final_grid_points	(n_points_final_grid)
        integer, allocatable	:: index_final_points	(3,n_points_final_grid)
        integer, allocatable	:: index_final_points_reverse	(n_points_integration_angular,n_points_radial_grid,nucl_num)

    File: :file:`grid_becke_vector.irp.f`

    final_grid_points(1:3,j) = (/ x, y, z /) of the jth grid point 
    final_weight_functions_at_final_grid_points(i) = Total weight function of the ith grid point which contains the Lebedev, Voronoi and radial weights contributions 
    index_final_points(1:3,i) = gives the angular, radial and atomic indices associated to the ith grid point 
    index_final_points_reverse(i,j,k) = index of the grid point having i as angular, j as radial and l as atomic indices




.. c:var:: final_weight_functions_at_grid_points

    .. code:: text

        double precision, allocatable	:: final_weight_functions_at_grid_points	(n_points_integration_angular,n_points_radial_grid,nucl_num)

    File: :file:`grid_becke.irp.f`

    Total weight on each grid point which takes into account all Lebedev, Voronoi and radial weights.




.. c:var:: grid_points_per_atom

    .. code:: text

        double precision, allocatable	:: grid_points_per_atom	(3,n_points_integration_angular,n_points_radial_grid,nucl_num)

    File: :file:`grid_becke.irp.f`

    x,y,z coordinates of grid points used for integration in 3d space




.. c:var:: grid_points_radial

    .. code:: text

        double precision, allocatable	:: grid_points_radial	(n_points_radial_grid)
        double precision	:: dr_radial_integral

    File: :file:`grid_becke.irp.f`

    points in [0,1] to map the radial integral [0,\infty]




.. c:var:: index_final_points

    .. code:: text

        double precision, allocatable	:: final_grid_points	(3,n_points_final_grid)
        double precision, allocatable	:: final_weight_functions_at_final_grid_points	(n_points_final_grid)
        integer, allocatable	:: index_final_points	(3,n_points_final_grid)
        integer, allocatable	:: index_final_points_reverse	(n_points_integration_angular,n_points_radial_grid,nucl_num)

    File: :file:`grid_becke_vector.irp.f`

    final_grid_points(1:3,j) = (/ x, y, z /) of the jth grid point 
    final_weight_functions_at_final_grid_points(i) = Total weight function of the ith grid point which contains the Lebedev, Voronoi and radial weights contributions 
    index_final_points(1:3,i) = gives the angular, radial and atomic indices associated to the ith grid point 
    index_final_points_reverse(i,j,k) = index of the grid point having i as angular, j as radial and l as atomic indices




.. c:var:: index_final_points_reverse

    .. code:: text

        double precision, allocatable	:: final_grid_points	(3,n_points_final_grid)
        double precision, allocatable	:: final_weight_functions_at_final_grid_points	(n_points_final_grid)
        integer, allocatable	:: index_final_points	(3,n_points_final_grid)
        integer, allocatable	:: index_final_points_reverse	(n_points_integration_angular,n_points_radial_grid,nucl_num)

    File: :file:`grid_becke_vector.irp.f`

    final_grid_points(1:3,j) = (/ x, y, z /) of the jth grid point 
    final_weight_functions_at_final_grid_points(i) = Total weight function of the ith grid point which contains the Lebedev, Voronoi and radial weights contributions 
    index_final_points(1:3,i) = gives the angular, radial and atomic indices associated to the ith grid point 
    index_final_points_reverse(i,j,k) = index of the grid point having i as angular, j as radial and l as atomic indices




.. c:var:: m_knowles

    .. code:: text

        integer	:: m_knowles

    File: :file:`grid_becke.irp.f`

    value of the "m" parameter in the equation (7) of the paper of Knowles (JCP, 104, 1996)




.. c:var:: n_points_final_grid

    .. code:: text

        integer	:: n_points_final_grid

    File: :file:`grid_becke_vector.irp.f`

    Number of points which are non zero




.. c:var:: n_points_grid_per_atom

    .. code:: text

        integer	:: n_points_grid_per_atom

    File: :file:`grid_becke.irp.f`

    Number of grid points per atom




.. c:var:: weight_functions_at_grid_points

    .. code:: text

        double precision, allocatable	:: weight_functions_at_grid_points	(n_points_integration_angular,n_points_radial_grid,nucl_num)

    File: :file:`grid_becke.irp.f`

    Weight function at grid points : w_n(r) according to the equation (22) of Becke original paper (JCP, 88, 1988) 
    The "n" discrete variable represents the nucleis which in this array is represented by the last dimension and the points are labelled by the other dimensions.




.. c:var:: weights_angular_points

    .. code:: text

        double precision, allocatable	:: angular_quadrature_points	(n_points_integration_angular,3)
        double precision, allocatable	:: weights_angular_points	(n_points_integration_angular)

    File: :file:`grid_becke.irp.f`

    weights and grid points for the integration on the angular variables on the unit sphere centered on (0,0,0) According to the LEBEDEV scheme




Subroutines / functions
-----------------------



.. c:function:: cell_function_becke

    .. code:: text

        double precision function cell_function_becke(r,atom_number)

    File: :file:`step_function_becke.irp.f`

    atom_number :: atom on which the cell function of Becke (1988, JCP,88(4)) r(1:3)                       :: x,y,z coordinantes of the current point





.. c:function:: derivative_knowles_function

    .. code:: text

        double precision function derivative_knowles_function(alpha,m,x)

    File: :file:`integration_radial.irp.f`

    Derivative of the function proposed by Knowles (JCP, 104, 1996) for distributing the radial points





.. c:function:: example_becke_numerical_grid

    .. code:: text

        subroutine example_becke_numerical_grid

    File: :file:`example.irp.f`

    subroutine that illustrates the main features available in becke_numerical_grid





.. c:function:: f_function_becke

    .. code:: text

        double precision function f_function_becke(x)

    File: :file:`step_function_becke.irp.f`

    





.. c:function:: knowles_function

    .. code:: text

        double precision function knowles_function(alpha,m,x)

    File: :file:`integration_radial.irp.f`

    Function proposed by Knowles (JCP, 104, 1996) for distributing the radial points : the Log "m" function ( equation (7) in the paper )





.. c:function:: step_function_becke

    .. code:: text

        double precision function step_function_becke(x)

    File: :file:`step_function_becke.irp.f`

    Step function of the Becke paper (1988, JCP,88(4))


