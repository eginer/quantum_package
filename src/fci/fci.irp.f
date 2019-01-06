program fci
  implicit none
  BEGIN_DOC
! Selected Full Configuration Interaction with stochastic selection and PT2.
  END_DOC

  if (.not.is_zmq_slave) then

    if (do_pt2) then
      call run_stochastic_cipsi
    else
      call run_cipsi
    endif

  else

    call run_slave_cipsi

  endif
end
