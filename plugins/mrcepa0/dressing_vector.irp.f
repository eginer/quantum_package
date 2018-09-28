
 BEGIN_PROVIDER [ double precision, dressing_column_h, (N_det,N_states) ]
&BEGIN_PROVIDER [ double precision, dressing_column_s, (N_det,N_states) ]
 implicit none
 BEGIN_DOC
 ! \Delta_{state-specific}. \Psi
 END_DOC

 integer :: i,ii,k,j, l
 double precision :: f, tmp
 double precision, external :: u_dot_v
 logical, external :: detEq

 dressing_column_h(:,:) = 0.d0
 dressing_column_s(:,:) = 0.d0

 do k=1,N_states
  integer :: jj
  l = dressed_column_idx(k)
   do jj=1,N_det_non_ref
     j = idx_non_ref(jj)
     dressing_column_h(j,k) = 2.d0 * delta_ij   (k,jj) 
     dressing_column_s(j,k) = 2.d0 * delta_ij_s2(k,jj)
     dressing_column_h(l,k) -= psi_coef(j,k) * delta_ij(k,jj) /psi_coef(l,k)
  enddo
 enddo

END_PROVIDER




! BEGIN_PROVIDER [ double precision, dressing_column_h, (N_det,N_states) ]
!&BEGIN_PROVIDER [ double precision, dressing_column_s, (N_det,N_states) ]
! implicit none
! BEGIN_DOC
! ! Null dressing vectors
! END_DOC
!
! integer :: i,ii,k,j,jj, l
! double precision :: f, tmp
! double precision, external :: u_dot_v
!
! dressing_column_h(:,:) = 0.d0
! dressing_column_s(:,:) = 0.d0
! do k=1,N_states
!   l = dressed_column_idx(k)
!   f = 1.d0/psi_coef(l,k)
!
!   do jj=1,N_det_non_ref
!     j = idx_non_ref(jj)
!     if (j /= l) then
!      dressing_column_h(j,k) = 2.d0*delta_ij   (k,jj) 
!      dressing_column_s(j,k) = 2.d0*delta_ij_s2(k,jj)
!     else
!      dressing_column_h(j,k) = delta_ij   (k,jj) 
!      dressing_column_s(j,k) = delta_ij_s2(k,jj)
!     endif
!   enddo
!
!   double precision :: h,s2
!   h  = u_dot_v (dressing_column_h(1,k), psi_coef(1,k), N_det) - psi_coef(l,k) * dressing_column_h(l,k)
!   s2 = u_dot_v (dressing_column_s(1,k), psi_coef(1,k), N_det) - psi_coef(l,k) * dressing_column_s(l,k)
!
!   dressing_column_h(l,k) = dressing_column_h(l,k) - 0.5d0 * h 
!   dressing_column_s(l,k) = dressing_column_s(l,k) - 0.5d0 * s2 
!
!   dressing_column_h(:,k) *= f
!   dressing_column_s(:,k) *= f
!
! enddo
!END_PROVIDER
!
