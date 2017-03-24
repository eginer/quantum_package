! DO NOT MODIFY BY HAND
! Created by $QP_ROOT/scripts/ezfio_interface/ei_handler.py
! from file /home/giner/qp_fork/quantum_package/src/MRPT_Utils/EZFIO.cfg


BEGIN_PROVIDER [ logical, do_third_order_1h1p  ]
  implicit none
  BEGIN_DOC
! If true, compute the third order contribution for the 1h1p
  END_DOC

  logical                        :: has
  PROVIDE ezfio_filename
  
  call ezfio_has_mrpt_utils_do_third_order_1h1p(has)
  if (has) then
    call ezfio_get_mrpt_utils_do_third_order_1h1p(do_third_order_1h1p)
  else
    print *, 'mrpt_utils/do_third_order_1h1p not found in EZFIO file'
    stop 1
  endif

END_PROVIDER

BEGIN_PROVIDER [ logical, save_heff_eigenvectors  ]
  implicit none
  BEGIN_DOC
! If true, save the eigenvectors of the dressed matrix
  END_DOC

  logical                        :: has
  PROVIDE ezfio_filename
  
  call ezfio_has_mrpt_utils_save_heff_eigenvectors(has)
  if (has) then
    call ezfio_get_mrpt_utils_save_heff_eigenvectors(save_heff_eigenvectors)
  else
    print *, 'mrpt_utils/save_heff_eigenvectors not found in EZFIO file'
    stop 1
  endif

END_PROVIDER
