program print_integrals

  PROVIDE ezfio_filename
  call ezfio_set_integrals_monoelec_disk_access_ao_one_integrals('None')
  call ezfio_set_integrals_bielec_disk_access_ao_integrals('None')
  call run
end

subroutine run
  implicit none
  
  integer :: iunit
  integer :: getunitandopen

  integer ::i,j,k,l
  double precision :: integral

  PROVIDE ao_bielec_integrals_in_map
  iunit = getunitandopen('eri.out','r')

  integer*8                      :: i8
  integer                        :: i_idx, n_elements_max, k1, n_elements
  integer                        :: ii(8), jj(8), kk(8), ll(8)
  double precision, external     :: ao_bielec_integral
  integer(key_kind), allocatable :: keys(:)
  double precision, allocatable  :: values(:)


  call get_cache_map_n_elements_max(ao_integrals_map,n_elements_max)
  allocate(keys(n_elements_max), values(n_elements_max))

  double precision, external :: get_ao_bielec_integral
  double precision :: integral_read
  do
    read (iunit,*, END=10) i,j,k,l, integral_read
    integral = get_ao_bielec_integral(i,j,k,l,ao_integrals_map)
    if (dabs(1.d0 - integral_read/integral) > 1.d-3) then
      print '(4(I6),2F20.15)', i,j,k,l,integral_read,integral
    endif
  enddo
  10 continue

  close(iunit)
end
