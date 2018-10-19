program e_curve
  implicit none
  integer :: i,j,k
  double precision :: norm, E, hij, num, ci, cj
  if (.not.read_wf) then
    stop 'Please set read_wf to true'
  endif
  num = 0.d0
  norm = 0.d0
  do k=1,N_det
!    do i=1,k-1
!     ci = psi_coef_sorted(i,1)
!     do j=1,i-1
!      call i_h_j(psi_det_sorted(1,1,i), psi_det_sorted(1,1,j), N_int, hij)
!      cj = psi_coef_sorted(j,1)
!      num = num + 2.d0*ci*cj * hij
!     enddo
!     call i_h_j(psi_det_sorted(1,1,i), psi_det_sorted(1,1,i), N_int, hij)
!     num = num + ci*ci * hij
!     norm = norm + ci*ci
!    enddo
    i=k
    ci = psi_coef_sorted(i,1)
    do j=1,i-1
      call i_h_j(psi_det_sorted(1,1,i), psi_det_sorted(1,1,j), N_int, hij)
      cj = psi_coef_sorted(j,1)
      num = num + 2.d0*ci*cj * hij
    enddo
    call i_h_j(psi_det_sorted(1,1,i), psi_det_sorted(1,1,i), N_int, hij)
    num = num + ci*ci * hij
    norm = norm + ci*ci
    E = num / norm + nuclear_repulsion
    print *,  k, E, real(num), real(norm)
  enddo

end

