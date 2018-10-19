program full_ci
  use bitmasks
  implicit none
  integer                        :: i,k
  integer                        :: tab(0:100)
  integer                        :: tab_ab(2,0:100)
  integer                        :: degree, degree_max, degree_max_ab
  double precision               :: av_deg, av_deg_ab, norm(0:2,0:100)

  if (N_int > 1) then
    stop 'Works only for N_int=1'
  endif

  tab = 0
  tab_ab = 0
  degree_max = -1
  degree_max_ab = -1
  av_deg = 0.d0
  av_deg_ab = 0.d0
  norm = 0.d0

  do i=1,N_det
    call get_excitation_degree(psi_det_sorted(1,1,1), psi_det_sorted(1,1,i), degree, N_int)
    tab(degree) += 1
    degree_max = max(degree_max,degree)
    av_deg += dble(degree)
    norm(0,degree) += psi_coef_sorted(i,1)*psi_coef_sorted(i,1)
  enddo
  av_deg = av_deg/dble(N_det)

  do i=1,n_det_alpha_unique
    degree = popcnt(xor( psi_det_sorted(1,1,1), psi_det_alpha_unique(1,i)) )/2
    degree_max_ab = max(degree_max_ab,degree)
    av_deg_ab += dble(degree)
    tab_ab(1,degree) += 1
    norm(1,degree) += det_alpha_norm(i)
  enddo
  do i=1,n_det_beta_unique
    degree = popcnt(xor( psi_det_sorted(1,2,1), psi_det_beta_unique(1,i)) )/2
    degree_max_ab = max(degree_max_ab,degree)
    av_deg_ab += dble(degree)
    tab_ab(2,degree) += 1
    norm(2,degree) += det_beta_norm(i)
  enddo
  av_deg_ab = av_deg_ab/dble(n_det_alpha_unique+n_det_beta_unique)

  print *,  ''
  print *,  'Exc Det_a x Det_b    Norm'
  do i=0,degree_max
    print '(I2,2X,I5,2X,G16.8)',  i, tab(i), norm(0,i)
  enddo
  print *,  ''
  print *,  'Exc Det_a    Norm            Det_b    Norm'
  do i=0,degree_max_ab
    print '(I2,2(2X,I5,2X,G16.8))',  i, tab_ab(1,i), norm(1,i), tab_ab(2,i), norm(2,i)
  enddo
  print *,  ''
  print *,  'Average excitation degree :', av_deg
  print *,  'Average excitation degree (spin) :', av_deg_ab

end
