subroutine save_erf_bi_elec_integrals_mo
 implicit none
 integer :: i,j,k,l
 PROVIDE mo_bielec_integrals_erf_in_map
 call ezfio_set_work_empty(.False.)
 call map_save_to_disk(trim(ezfio_filename)//'/work/mo_ints_erf',mo_integrals_erf_map)
 call ezfio_set_mo_two_e_erf_integrals_disk_access_mo_integrals_erf('Read')
end


subroutine save_erf_bielec_ints_mo_into_ints_mo
 implicit none
 integer :: i,j,k,l
 PROVIDE mo_bielec_integrals_erf_in_map
 call ezfio_set_work_empty(.False.)
 call map_save_to_disk(trim(ezfio_filename)//'/work/mo_ints',mo_integrals_erf_map)
 call ezfio_set_mo_two_e_integrals_disk_access_mo_integrals('Read')
end

