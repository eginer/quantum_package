 program scf_dirac_gaunt
  BEGIN_DOC
  ! Produce `Hartree_Fock` MO orbital 
  ! output: mo_basis.mo_tot_num mo_basis.mo_label mo_basis.ao_md5 mo_basis.mo_coef mo_basis.mo_occ
  ! output: hartree_fock.energy
  ! optional: mo_basis.mo_coef
  END_DOC
  call create_dirac_guess
 !call orthonormalize_dirac_mos
  call test_dirac_Gaunt
  call run_dirac_Gaunt
 end

 subroutine create_dirac_guess
  implicit none
  BEGIN_DOC
  ! Create a MO guess if no MOs are present in the EZFIO directory
  END_DOC
  logical                        :: exists
  PROVIDE ezfio_filename
   if (mo_guess_type == "HCore") then
    dirac_mo_coef = eigenvectors_dirac_mono_elec_ao
    TOUCH dirac_mo_coef       
    dirac_mo_label = 'Guess'
    SOFT_TOUCH dirac_mo_coef dirac_mo_label
   else
    print *,  'Unrecognized MO guess type : '//mo_guess_type
    stop 1
   endif
 end

 subroutine test_dirac_Gaunt
  implicit none
  integer   :: i,j
  complex*16 :: ortho(2*dirac_ao_num)
  ortho = (0.d0,0.d0)
  do j= 1, 2*dirac_ao_num
   do i=1, 2*dirac_ao_num
   !print*,i,j,dirac_mo_coef(i,j) 
   !print*,i,j,dirac_mo_overlap(i,j) 
   !print*,i,j,dirac_mo_overlap_bis(i,j) 
   !print*,i,j,dirac_SCF_density_matrix_ao(i+large_ao_num,j)
   !print*,i,j,dirac_SCF_density_matrix_ao(j,i+large_ao_num)
   !print*,i,j,dirac_ao_bi_elec_integral(i,j)
   !print*,i,j,dirac_ao_bi_elec_Gaunt_integral(i,j)
   !print*,i,j,dirac_ao_bi_elec_integral_qq(i,j)
   !print*,i,j,dirac_ao_mono_elec_integral (i,j)
   !print*,i,j,dirac_Fock_matrix_ao (i,j)
   !ortho(j) += Conjg(dirac_mo_coef(i,17))*dirac_mo_coef(i,j)
   enddo
 !print*,j,ortho(j)
  enddo
 
  print*, nuclear_repulsion
  print*, dirac_HF_one_electron_energy
  print*, dirac_HF_two_electron_energy, dirac_HF_two_electron_Gaunt_energy 
  print*,'***********'
  print*, dirac_SCF_energy, dirac_SCF_Gaunt_energy 

   do i = 1, 2*dirac_ao_num
   !print*,i,eigenvalues_dirac_fock_matrix_mo(i)
   !print*,i,eigenvalues_dirac_mono_elec_mo(i)
   !print*,'*********'
   enddo
 end



 subroutine run_dirac_Gaunt
  BEGIN_DOC
  ! Run SCF_dirac calculation
  END_DOC
  use bitmasks
  implicit none
 !dirac_mo_label = "Canonical"
 !soft_touch dirac_mo_label
 !Choose SCF algorithm
  call damping_dirac_Gaunt_SCF  
 !call Roothaan_Hall_SCF
 end

