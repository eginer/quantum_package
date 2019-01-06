.. _utils:

.. program:: utils

.. default-role:: option

=====
utils
=====

Contains general purpose utilities (sorting, maps, etc).




Providers
---------


.. c:var:: binom

    .. code:: text

        double precision, allocatable	:: binom	(0:40,0:40)
        double precision, allocatable	:: binom_transp	(0:40,0:40)

    File: :file:`util.irp.f`

    Binomial coefficients




.. c:var:: binom_int

    .. code:: text

        integer*8, allocatable	:: binom_int	(0:40,0:40)
        integer*8, allocatable	:: binom_int_transp	(0:40,0:40)

    File: :file:`util.irp.f`

    Binomial coefficients, as integers*8




.. c:var:: binom_int_transp

    .. code:: text

        integer*8, allocatable	:: binom_int	(0:40,0:40)
        integer*8, allocatable	:: binom_int_transp	(0:40,0:40)

    File: :file:`util.irp.f`

    Binomial coefficients, as integers*8




.. c:var:: binom_transp

    .. code:: text

        double precision, allocatable	:: binom	(0:40,0:40)
        double precision, allocatable	:: binom_transp	(0:40,0:40)

    File: :file:`util.irp.f`

    Binomial coefficients




.. c:var:: degree_max_integration_lebedev

    .. code:: text

        integer	:: degree_max_integration_lebedev

    File: :file:`angular_integration.irp.f`

    integrate correctly a polynom of order "degree_max_integration_lebedev" needed for the angular integration according to LEBEDEV formulae




.. c:var:: dtranspose

    .. code:: text

        recursive subroutine dtranspose(A,LDA,B,LDB,d1,d2)

    File: :file:`transpose.irp.f`

    Transpose input matrix A into output matrix B




.. c:var:: fact_inv

    .. code:: text

        double precision, allocatable	:: fact_inv	(128)

    File: :file:`util.irp.f`

    1/n!




.. c:var:: i2radix_sort

    .. code:: text

        recursive subroutine i2radix_sort(x,iorder,isize,iradix)

    File: :file:`sort.irp.f_template_644`

    Sort integer array x(isize) using the radix sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. iradix should be -1 in input.




.. c:var:: i8radix_sort

    .. code:: text

        recursive subroutine i8radix_sort(x,iorder,isize,iradix)

    File: :file:`sort.irp.f_template_644`

    Sort integer array x(isize) using the radix sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. iradix should be -1 in input.




.. c:var:: i8radix_sort_big

    .. code:: text

        recursive subroutine i8radix_sort_big(x,iorder,isize,iradix)

    File: :file:`sort.irp.f_template_644`

    Sort integer array x(isize) using the radix sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. iradix should be -1 in input.




.. c:var:: inv_int

    .. code:: text

        double precision, allocatable	:: inv_int	(128)

    File: :file:`util.irp.f`

    1/i




.. c:var:: iradix_sort

    .. code:: text

        recursive subroutine iradix_sort(x,iorder,isize,iradix)

    File: :file:`sort.irp.f_template_644`

    Sort integer array x(isize) using the radix sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. iradix should be -1 in input.




.. c:var:: iradix_sort_big

    .. code:: text

        recursive subroutine iradix_sort_big(x,iorder,isize,iradix)

    File: :file:`sort.irp.f_template_644`

    Sort integer array x(isize) using the radix sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. iradix should be -1 in input.




.. c:var:: n_points_integration_angular_lebedev

    .. code:: text

        integer	:: n_points_integration_angular_lebedev

    File: :file:`angular_integration.irp.f`

    Number of points needed for the angular integral




.. c:var:: nproc

    .. code:: text

        integer	:: nproc

    File: :file:`util.irp.f`

    Number of current OpenMP threads




.. c:var:: overlap_gaussian_xyz

    .. code:: text

        subroutine overlap_gaussian_xyz(A_center,B_center,alpha,beta,power_A,&
              power_B,overlap_x,overlap_y,overlap_z,overlap,dim)

    File: :file:`one_e_integration.irp.f`

    .. math:: 

    S_x = \int (x-A_x)^{a_x} exp(-\alpha(x-A_x)^2)  (x-B_x)^{b_x} exp(-beta(x-B_x)^2) dx \\ S = S_x S_y S_z 






.. c:var:: phi_angular_integration_lebedev

    .. code:: text

        double precision, allocatable	:: theta_angular_integration_lebedev	(n_points_integration_angular_lebedev)
        double precision, allocatable	:: phi_angular_integration_lebedev	(n_points_integration_angular_lebedev)
        double precision, allocatable	:: weights_angular_integration_lebedev	(n_points_integration_angular_lebedev)

    File: :file:`angular_integration.irp.f`

    Theta phi values together with the weights values for the angular integration : integral [dphi,dtheta] f(x,y,z) = 4 * pi * sum (1<i<n_points_integration_angular_lebedev) f(xi,yi,zi) Note that theta and phi are in DEGREES !!




.. c:var:: qp_max_mem

    .. code:: text

        integer	:: qp_max_mem

    File: :file:`memory.irp.f`

    Maximum memory in Gb




.. c:var:: rec__quicksort

    .. code:: text

        recursive subroutine rec__quicksort(x, iorder, isize, first, last, level)

    File: :file:`sort.irp.f_template_261`

    




.. c:var:: rec_d_quicksort

    .. code:: text

        recursive subroutine rec_d_quicksort(x, iorder, isize, first, last, level)

    File: :file:`sort.irp.f_template_261`

    




.. c:var:: rec_i2_quicksort

    .. code:: text

        recursive subroutine rec_i2_quicksort(x, iorder, isize, first, last, level)

    File: :file:`sort.irp.f_template_261`

    




.. c:var:: rec_i8_quicksort

    .. code:: text

        recursive subroutine rec_i8_quicksort(x, iorder, isize, first, last, level)

    File: :file:`sort.irp.f_template_261`

    




.. c:var:: rec_i_quicksort

    .. code:: text

        recursive subroutine rec_i_quicksort(x, iorder, isize, first, last, level)

    File: :file:`sort.irp.f_template_261`

    




.. c:var:: theta_angular_integration_lebedev

    .. code:: text

        double precision, allocatable	:: theta_angular_integration_lebedev	(n_points_integration_angular_lebedev)
        double precision, allocatable	:: phi_angular_integration_lebedev	(n_points_integration_angular_lebedev)
        double precision, allocatable	:: weights_angular_integration_lebedev	(n_points_integration_angular_lebedev)

    File: :file:`angular_integration.irp.f`

    Theta phi values together with the weights values for the angular integration : integral [dphi,dtheta] f(x,y,z) = 4 * pi * sum (1<i<n_points_integration_angular_lebedev) f(xi,yi,zi) Note that theta and phi are in DEGREES !!




.. c:var:: transpose

    .. code:: text

        recursive subroutine transpose(A,LDA,B,LDB,d1,d2)

    File: :file:`transpose.irp.f`

    Transpose input matrix A into output matrix B




.. c:var:: weights_angular_integration_lebedev

    .. code:: text

        double precision, allocatable	:: theta_angular_integration_lebedev	(n_points_integration_angular_lebedev)
        double precision, allocatable	:: phi_angular_integration_lebedev	(n_points_integration_angular_lebedev)
        double precision, allocatable	:: weights_angular_integration_lebedev	(n_points_integration_angular_lebedev)

    File: :file:`angular_integration.irp.f`

    Theta phi values together with the weights values for the angular integration : integral [dphi,dtheta] f(x,y,z) = 4 * pi * sum (1<i<n_points_integration_angular_lebedev) f(xi,yi,zi) Note that theta and phi are in DEGREES !!




Subroutines / functions
-----------------------



.. c:function:: a_coef

    .. code:: text

        double precision function a_coef(n)

    File: :file:`need.irp.f`

    





.. c:function:: add_poly

    .. code:: text

        subroutine add_poly(b,nb,c,nc,d,nd)

    File: :file:`integration.irp.f`

    Add two polynomials D(t) =! D(t) +( B(t)+C(t))





.. c:function:: add_poly_multiply

    .. code:: text

        subroutine add_poly_multiply(b,nb,cst,d,nd)

    File: :file:`integration.irp.f`

    Add a polynomial multiplied by a constant D(t) =! D(t) +( cst * B(t))





.. c:function:: apply_rotation

    .. code:: text

        subroutine apply_rotation(A,LDA,R,LDR,B,LDB,m,n)

    File: :file:`linear_algebra.irp.f`

    Apply the rotation found by find_rotation





.. c:function:: approx_dble

    .. code:: text

        double precision function approx_dble(a,n)

    File: :file:`util.irp.f`

    





.. c:function:: b_coef

    .. code:: text

        double precision function b_coef(n,u)

    File: :file:`need.irp.f`

    





.. c:function:: binom_func

    .. code:: text

        double precision function binom_func(i,j)

    File: :file:`util.irp.f`

    .. math                       :: 

    \frac{i!}{j!(i-j)!} 







.. c:function:: check_mem

    .. code:: text

        subroutine check_mem(rss_in,routine)

    File: :file:`memory.irp.f`

    Checks if n gigabytes can be allocated. If not, exit the run.





.. c:function:: dble_fact

    .. code:: text

        double precision function dble_fact(n)

    File: :file:`util.irp.f`

    





.. c:function:: dble_fact_even

    .. code:: text

        double precision function dble_fact_even(n) result(fact2)

    File: :file:`util.irp.f`

    n!!





.. c:function:: dble_fact_odd

    .. code:: text

        double precision function dble_fact_odd(n) result(fact2)

    File: :file:`util.irp.f`

    n!!





.. c:function:: dble_logfact

    .. code:: text

        double precision function dble_logfact(n) result(logfact2)

    File: :file:`util.irp.f`

    n!!





.. c:function:: ddfact2

    .. code:: text

        double precision function ddfact2(n)

    File: :file:`need.irp.f`

    





.. c:function:: dset_order

    .. code:: text

        subroutine dset_order(x,iorder,isize)

    File: :file:`sort.irp.f_template_347`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A.





.. c:function:: dset_order_big

    .. code:: text

        subroutine dset_order_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: dsort

    .. code:: text

        subroutine dsort(x,iorder,isize)

    File: :file:`sort.irp.f_template_293`

    Sort array x(isize). iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: erf0

    .. code:: text

        double precision function erf0(x)

    File: :file:`need.irp.f`

    





.. c:function:: extrapolate_data

    .. code:: text

        subroutine extrapolate_data(N_data, data, pt2, output)

    File: :file:`extrapolation.irp.f`

    Extrapolate the data to the FCI limit





.. c:function:: f_integral

    .. code:: text

        double precision function F_integral(n,p)

    File: :file:`integration.irp.f`

    function that calculates the following integral \int_{\-infty}^{+\infty} x^n \exp(-p x^2) dx





.. c:function:: fact

    .. code:: text

        double precision function fact(n)

    File: :file:`util.irp.f`

    n!





.. c:function:: find_rotation

    .. code:: text

        subroutine find_rotation(A,LDA,B,m,C,n)

    File: :file:`linear_algebra.irp.f`

    Find A.C = B





.. c:function:: gammln

    .. code:: text

        double precision function gammln(xx)

    File: :file:`need.irp.f`

    





.. c:function:: gammp

    .. code:: text

        double precision function gammp(a,x)

    File: :file:`need.irp.f`

    





.. c:function:: gaussian_product

    .. code:: text

        subroutine gaussian_product(a,xa,b,xb,k,p,xp)

    File: :file:`integration.irp.f`

    Gaussian product in 1D. e^{-a (x-x_A)^2} e^{-b (x-x_B)^2} = K_{ab}^x e^{-p (x-x_P)^2}





.. c:function:: gaussian_product_x

    .. code:: text

        subroutine gaussian_product_x(a,xa,b,xb,k,p,xp)

    File: :file:`integration.irp.f`

    Gaussian product in 1D. e^{-a (x-x_A)^2} e^{-b (x-x_B)^2} = K_{ab}^x e^{-p (x-x_P)^2}





.. c:function:: gcf

    .. code:: text

        subroutine gcf(gammcf,a,x,gln)

    File: :file:`need.irp.f`

    





.. c:function:: get_inverse

    .. code:: text

        subroutine get_inverse(A,LDA,m,C,LDC)

    File: :file:`linear_algebra.irp.f`

    Returns the inverse of the square matrix A





.. c:function:: get_pseudo_inverse

    .. code:: text

        subroutine get_pseudo_inverse(A,LDA,m,n,C,LDC)

    File: :file:`linear_algebra.irp.f`

    Find C = A^-1





.. c:function:: give_explicit_poly_and_gaussian

    .. code:: text

        subroutine give_explicit_poly_and_gaussian(P_new,P_center,p,fact_k,iorder,alpha,beta,a,b,A_center,B_center,dim)

    File: :file:`integration.irp.f`

    Transforms the product of (x-x_A)^a(1) (x-x_B)^b(1) (x-x_A)^a(2) (y-y_B)^b(2) (z-z_A)^a(3) (z-z_B)^b(3) exp(-(r-A)^2 alpha) exp(-(r-B)^2 beta) into fact_k * [ sum (l_x = 0,i_order(1)) P_new(l_x,1) * (x-P_center(1))^l_x ] exp (- p (x-P_center(1))^2 ) * [ sum (l_y = 0,i_order(2)) P_new(l_y,2) * (y-P_center(2))^l_y ] exp (- p (y-P_center(2))^2 ) * [ sum (l_z = 0,i_order(3)) P_new(l_z,3) * (z-P_center(3))^l_z ] exp (- p (z-P_center(3))^2 )





.. c:function:: give_explicit_poly_and_gaussian_double

    .. code:: text

        subroutine give_explicit_poly_and_gaussian_double(P_new,P_center,p,fact_k,iorder,alpha,beta,gama,a,b,A_center,B_center,Nucl_center,dim)

    File: :file:`integration.irp.f`

    Transforms the product of (x-x_A)^a(1) (x-x_B)^b(1) (x-x_A)^a(2) (y-y_B)^b(2) (z-z_A)^a(3) (z-z_B)^b(3) exp(-(r-A)^2 alpha) exp(-(r-B)^2 beta) exp(-(r-Nucl_center)^2 gama 

    into fact_k * [ sum (l_x = 0,i_order(1)) P_new(l_x,1) * (x-P_center(1))^l_x ] exp (- p (x-P_center(1))^2 ) * [ sum (l_y = 0,i_order(2)) P_new(l_y,2) * (y-P_center(2))^l_y ] exp (- p (y-P_center(2))^2 ) * [ sum (l_z = 0,i_order(3)) P_new(l_z,3) * (z-P_center(3))^l_z ] exp (- p (z-P_center(3))^2 )





.. c:function:: give_explicit_poly_and_gaussian_x

    .. code:: text

        subroutine give_explicit_poly_and_gaussian_x(P_new,P_center,p,fact_k,iorder,alpha,beta,a,b,A_center,B_center,dim)

    File: :file:`integration.irp.f`

    Transform the product of (x-x_A)^a(1) (x-x_B)^b(1) (x-x_A)^a(2) (y-y_B)^b(2) (z-z_A)^a(3) (z-z_B)^b(3) exp(-(r-A)^2 alpha) exp(-(r-B)^2 beta) into fact_k  (x-x_P)^iorder(1)  (y-y_P)^iorder(2)  (z-z_P)^iorder(3) exp(-p(r-P)^2)





.. c:function:: gser

    .. code:: text

        subroutine gser(gamser,a,x,gln)

    File: :file:`need.irp.f`

    





.. c:function:: heap_dsort

    .. code:: text

        subroutine heap_dsort(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: heap_dsort_big

    .. code:: text

        subroutine heap_dsort_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: heap_i2sort

    .. code:: text

        subroutine heap_i2sort(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: heap_i2sort_big

    .. code:: text

        subroutine heap_i2sort_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: heap_i8sort

    .. code:: text

        subroutine heap_i8sort(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: heap_i8sort_big

    .. code:: text

        subroutine heap_i8sort_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: heap_isort

    .. code:: text

        subroutine heap_isort(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: heap_isort_big

    .. code:: text

        subroutine heap_isort_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: heap_sort

    .. code:: text

        subroutine heap_sort(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: heap_sort_big

    .. code:: text

        subroutine heap_sort_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the heap sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: hermite

    .. code:: text

        double precision function hermite(n,x)

    File: :file:`integration.irp.f`

    Hermite polynomial





.. c:function:: i2set_order

    .. code:: text

        subroutine i2set_order(x,iorder,isize)

    File: :file:`sort.irp.f_template_347`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A.





.. c:function:: i2set_order_big

    .. code:: text

        subroutine i2set_order_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: i2sort

    .. code:: text

        subroutine i2sort(x,iorder,isize)

    File: :file:`sort.irp.f_template_315`

    Sort array x(isize). iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: i8set_order

    .. code:: text

        subroutine i8set_order(x,iorder,isize)

    File: :file:`sort.irp.f_template_347`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A.





.. c:function:: i8set_order_big

    .. code:: text

        subroutine i8set_order_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: i8sort

    .. code:: text

        subroutine i8sort(x,iorder,isize)

    File: :file:`sort.irp.f_template_315`

    Sort array x(isize). iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: insertion_dsort

    .. code:: text

        subroutine insertion_dsort (x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: insertion_dsort_big

    .. code:: text

        subroutine insertion_dsort_big (x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: insertion_i2sort

    .. code:: text

        subroutine insertion_i2sort (x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: insertion_i2sort_big

    .. code:: text

        subroutine insertion_i2sort_big (x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: insertion_i8sort

    .. code:: text

        subroutine insertion_i8sort (x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: insertion_i8sort_big

    .. code:: text

        subroutine insertion_i8sort_big (x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: insertion_isort

    .. code:: text

        subroutine insertion_isort (x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: insertion_isort_big

    .. code:: text

        subroutine insertion_isort_big (x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: insertion_sort

    .. code:: text

        subroutine insertion_sort (x,iorder,isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: insertion_sort_big

    .. code:: text

        subroutine insertion_sort_big (x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    Sort array x(isize) using the insertion sort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: iset_order

    .. code:: text

        subroutine iset_order(x,iorder,isize)

    File: :file:`sort.irp.f_template_347`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A.





.. c:function:: iset_order_big

    .. code:: text

        subroutine iset_order_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: isort

    .. code:: text

        subroutine isort(x,iorder,isize)

    File: :file:`sort.irp.f_template_315`

    Sort array x(isize). iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: lapack_diag

    .. code:: text

        subroutine lapack_diag(eigvalues,eigvectors,H,nmax,n)

    File: :file:`linear_algebra.irp.f`

    Diagonalize matrix H 

    H is untouched between input and ouptut 

    eigevalues(i) = ith lowest eigenvalue of the H matrix 

    eigvectors(i,j) = <i|psi_j> where i is the basis function and psi_j is the j th eigenvector 







.. c:function:: lapack_diagd

    .. code:: text

        subroutine lapack_diagd(eigvalues,eigvectors,H,nmax,n)

    File: :file:`linear_algebra.irp.f`

    Diagonalize matrix H 

    H is untouched between input and ouptut 

    eigevalues(i) = ith lowest eigenvalue of the H matrix 

    eigvectors(i,j) = <i|psi_j> where i is the basis function and psi_j is the j th eigenvector 







.. c:function:: logfact

    .. code:: text

        double precision function logfact(n)

    File: :file:`util.irp.f`

    n!





.. c:function:: lowercase

    .. code:: text

        subroutine lowercase(txt,n)

    File: :file:`util.irp.f`

    Transform to lower case





.. c:function:: map_load_from_disk

    .. code:: text

        subroutine map_load_from_disk(filename,map)

    File: :file:`map_functions.irp.f`

    





.. c:function:: map_save_to_disk

    .. code:: text

        subroutine map_save_to_disk(filename,map)

    File: :file:`map_functions.irp.f`

    





.. c:function:: memory_of_double

    .. code:: text

        double precision function memory_of_double(n)

    File: :file:`memory.irp.f`

    Computes the memory required for n double precision elements in gigabytes.





.. c:function:: memory_of_int

    .. code:: text

        double precision function memory_of_int(n)

    File: :file:`memory.irp.f`

    Computes the memory required for n double precision elements in gigabytes.





.. c:function:: multiply_poly

    .. code:: text

        subroutine multiply_poly(b,nb,c,nc,d,nd)

    File: :file:`integration.irp.f`

    Multiply two polynomials D(t) =! D(t) +( B(t)*C(t))





.. c:function:: normalize

    .. code:: text

        subroutine normalize(u,sze)

    File: :file:`util.irp.f`

    Normalizes vector u





.. c:function:: ortho_canonical

    .. code:: text

        subroutine ortho_canonical(overlap,LDA,N,C,LDC,m)

    File: :file:`linear_algebra.irp.f`

    Compute C_new=C_old.U.s^-1/2 canonical orthogonalization. 

    overlap : overlap matrix 

    LDA : leftmost dimension of overlap array 

    N : Overlap matrix is NxN (array is (LDA,N) ) 

    C : Coefficients of the vectors to orthogonalize. On exit, orthogonal vectors 

    LDC : leftmost dimension of C 

    m : Coefficients matrix is MxN, ( array is (LDC,N) ) 







.. c:function:: ortho_lowdin

    .. code:: text

        subroutine ortho_lowdin(overlap,LDA,N,C,LDC,m)

    File: :file:`linear_algebra.irp.f`

    Compute C_new=C_old.S^-1/2 orthogonalization. 

    overlap : overlap matrix 

    LDA : leftmost dimension of overlap array 

    N : Overlap matrix is NxN (array is (LDA,N) ) 

    C : Coefficients of the vectors to orthogonalize. On exit, orthogonal vectors 

    LDC : leftmost dimension of C 

    M : Coefficients matrix is MxN, ( array is (LDC,N) ) 







.. c:function:: ortho_qr

    .. code:: text

        subroutine ortho_qr(A,LDA,m,n)

    File: :file:`linear_algebra.irp.f`

    Orthogonalization using Q.R factorization 

    A : matrix to orthogonalize 

    LDA : leftmost dimension of A 

    n : Number of rows of A 

    m : Number of columns of A 







.. c:function:: ortho_qr_unblocked

    .. code:: text

        subroutine ortho_qr_unblocked(A,LDA,m,n)

    File: :file:`linear_algebra.irp.f`

    Orthogonalization using Q.R factorization 

    A : matrix to orthogonalize 

    LDA : leftmost dimension of A 

    n : Number of rows of A 

    m : Number of columns of A 







.. c:function:: overlap_gaussian_x

    .. code:: text

        double precision function overlap_gaussian_x(A_center,B_center,alpha,beta,power_A,power_B,dim)

    File: :file:`one_e_integration.irp.f`

    .. math:: 

    \sum_{-infty}^{+infty} (x-A_x)^ax (x-B_x)^bx exp(-alpha(x-A_x)^2) exp(-beta(x-B_X)^2) dx 







.. c:function:: overlap_x_abs

    .. code:: text

        subroutine overlap_x_abs(A_center,B_center,alpha,beta,power_A,power_B,overlap_x,lower_exp_val,dx,nx)

    File: :file:`one_e_integration.irp.f`

    .. math                      :: 

    \int_{-infty}^{+infty} (x-A_center)^(power_A) * (x-B_center)^power_B * exp(-alpha(x-A_center)^2) * exp(-beta(x-B_center)^2) dx 







.. c:function:: print_memory_usage

    .. code:: text

        subroutine print_memory_usage()

    File: :file:`memory.irp.f`

    Prints the memory usage in the output





.. c:function:: quick_dsort

    .. code:: text

        subroutine quick_dsort(x, iorder, isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the quicksort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: quick_i2sort

    .. code:: text

        subroutine quick_i2sort(x, iorder, isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the quicksort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: quick_i8sort

    .. code:: text

        subroutine quick_i8sort(x, iorder, isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the quicksort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: quick_isort

    .. code:: text

        subroutine quick_isort(x, iorder, isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the quicksort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: quick_sort

    .. code:: text

        subroutine quick_sort(x, iorder, isize)

    File: :file:`sort.irp.f_template_261`

    Sort array x(isize) using the quicksort algorithm. iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: recentered_poly2

    .. code:: text

        subroutine recentered_poly2(P_new,x_A,x_P,a,P_new2,x_B,x_Q,b)

    File: :file:`integration.irp.f`

    Recenter two polynomials





.. c:function:: resident_memory

    .. code:: text

        subroutine resident_memory(value)

    File: :file:`memory.irp.f`

    Returns the current used memory in gigabytes used by the current process.





.. c:function:: rint

    .. code:: text

        double precision function rint(n,rho)

    File: :file:`integration.irp.f`

    .. math:: 

    \int_0^1 dx \exp(-p x^2) x^n 







.. c:function:: rint1

    .. code:: text

        double precision function rint1(n,rho)

    File: :file:`integration.irp.f`

    Standard version of rint





.. c:function:: rint_large_n

    .. code:: text

        double precision function rint_large_n(n,rho)

    File: :file:`integration.irp.f`

    Version of rint for large values of n





.. c:function:: rint_sum

    .. code:: text

        double precision function rint_sum(n_pt_out,rho,d1)

    File: :file:`integration.irp.f`

    Needed for the calculation of two-electron integrals.





.. c:function:: rinteg

    .. code:: text

        double precision function rinteg(n,u)

    File: :file:`need.irp.f`

    





.. c:function:: rintgauss

    .. code:: text

        double precision function rintgauss(n)

    File: :file:`need.irp.f`

    





.. c:function:: sabpartial

    .. code:: text

        double precision function SABpartial(zA,zB,A,B,nA,nB,gamA,gamB,l)

    File: :file:`need.irp.f`

    





.. c:function:: set_order

    .. code:: text

        subroutine set_order(x,iorder,isize)

    File: :file:`sort.irp.f_template_347`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A.





.. c:function:: set_order_big

    .. code:: text

        subroutine set_order_big(x,iorder,isize)

    File: :file:`sort.irp.f_template_412`

    array A has already been sorted, and iorder has contains the new order of elements of A. This subroutine changes the order of x to match the new order of A. This is a version for very large arrays where the indices need to be in integer*8 format





.. c:function:: sort

    .. code:: text

        subroutine sort(x,iorder,isize)

    File: :file:`sort.irp.f_template_293`

    Sort array x(isize). iorder in input should be (1,2,3,...,isize), and in output contains the new order of the elements.





.. c:function:: sorted_dnumber

    .. code:: text

        subroutine sorted_dnumber(x,isize,n)

    File: :file:`sort.irp.f_template_261`

    Returns the number of sorted elements





.. c:function:: sorted_i2number

    .. code:: text

        subroutine sorted_i2number(x,isize,n)

    File: :file:`sort.irp.f_template_261`

    Returns the number of sorted elements





.. c:function:: sorted_i8number

    .. code:: text

        subroutine sorted_i8number(x,isize,n)

    File: :file:`sort.irp.f_template_261`

    Returns the number of sorted elements





.. c:function:: sorted_inumber

    .. code:: text

        subroutine sorted_inumber(x,isize,n)

    File: :file:`sort.irp.f_template_261`

    Returns the number of sorted elements





.. c:function:: sorted_number

    .. code:: text

        subroutine sorted_number(x,isize,n)

    File: :file:`sort.irp.f_template_261`

    Returns the number of sorted elements





.. c:function:: svd

    .. code:: text

        subroutine svd(A,LDA,U,LDU,D,Vt,LDVt,m,n)

    File: :file:`linear_algebra.irp.f`

    Compute A = U.D.Vt 

    LDx : leftmost dimension of x 

    Dimsneion of A is m x n 







.. c:function:: total_memory

    .. code:: text

        subroutine total_memory(value)

    File: :file:`memory.irp.f`

    Returns the current used memory in gigabytes used by the current process.





.. c:function:: u_dot_u

    .. code:: text

        double precision function u_dot_u(u,sze)

    File: :file:`util.irp.f`

    Compute <u|u>





.. c:function:: u_dot_v

    .. code:: text

        double precision function u_dot_v(u,v,sze)

    File: :file:`util.irp.f`

    Compute <u|v>





.. c:function:: wall_time

    .. code:: text

        subroutine wall_time(t)

    File: :file:`util.irp.f`

    The equivalent of cpu_time, but for the wall time.





.. c:function:: write_git_log

    .. code:: text

        subroutine write_git_log(iunit)

    File: :file:`util.irp.f`

    Write the last git commit in file iunit.


