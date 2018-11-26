.. _zmq:

.. program:: zmq

.. default-role:: option

===
ZMQ
===

Definition of |ZeroMQ| sockets and messages.





Providers
---------


.. c:var:: qp_run_address

    .. code:: text

        character*(128)	:: qp_run_address
        integer	:: zmq_port_start

    File: :file:`utils.irp.f`

    Address of the qp_run socket Example : tcp://130.120.229.139:12345




.. c:var:: zmq_context

    .. code:: text

        integer(ZMQ_PTR)	:: zmq_context
        integer(omp_lock_kind)	:: zmq_lock

    File: :file:`utils.irp.f`

    Context for the ZeroMQ library




.. c:var:: zmq_lock

    .. code:: text

        integer(ZMQ_PTR)	:: zmq_context
        integer(omp_lock_kind)	:: zmq_lock

    File: :file:`utils.irp.f`

    Context for the ZeroMQ library




.. c:var:: zmq_port_start

    .. code:: text

        character*(128)	:: qp_run_address
        integer	:: zmq_port_start

    File: :file:`utils.irp.f`

    Address of the qp_run socket Example : tcp://130.120.229.139:12345




.. c:var:: zmq_socket_pair_inproc_address

    .. code:: text

        character*(128)	:: zmq_socket_pull_tcp_address
        character*(128)	:: zmq_socket_pair_inproc_address
        character*(128)	:: zmq_socket_push_tcp_address
        character*(128)	:: zmq_socket_pull_inproc_address
        character*(128)	:: zmq_socket_push_inproc_address
        character*(128)	:: zmq_socket_sub_tcp_address

    File: :file:`utils.irp.f`

    Socket which pulls the results (2)




.. c:var:: zmq_socket_pull_inproc_address

    .. code:: text

        character*(128)	:: zmq_socket_pull_tcp_address
        character*(128)	:: zmq_socket_pair_inproc_address
        character*(128)	:: zmq_socket_push_tcp_address
        character*(128)	:: zmq_socket_pull_inproc_address
        character*(128)	:: zmq_socket_push_inproc_address
        character*(128)	:: zmq_socket_sub_tcp_address

    File: :file:`utils.irp.f`

    Socket which pulls the results (2)




.. c:var:: zmq_socket_pull_tcp_address

    .. code:: text

        character*(128)	:: zmq_socket_pull_tcp_address
        character*(128)	:: zmq_socket_pair_inproc_address
        character*(128)	:: zmq_socket_push_tcp_address
        character*(128)	:: zmq_socket_pull_inproc_address
        character*(128)	:: zmq_socket_push_inproc_address
        character*(128)	:: zmq_socket_sub_tcp_address

    File: :file:`utils.irp.f`

    Socket which pulls the results (2)




.. c:var:: zmq_socket_push_inproc_address

    .. code:: text

        character*(128)	:: zmq_socket_pull_tcp_address
        character*(128)	:: zmq_socket_pair_inproc_address
        character*(128)	:: zmq_socket_push_tcp_address
        character*(128)	:: zmq_socket_pull_inproc_address
        character*(128)	:: zmq_socket_push_inproc_address
        character*(128)	:: zmq_socket_sub_tcp_address

    File: :file:`utils.irp.f`

    Socket which pulls the results (2)




.. c:var:: zmq_socket_push_tcp_address

    .. code:: text

        character*(128)	:: zmq_socket_pull_tcp_address
        character*(128)	:: zmq_socket_pair_inproc_address
        character*(128)	:: zmq_socket_push_tcp_address
        character*(128)	:: zmq_socket_pull_inproc_address
        character*(128)	:: zmq_socket_push_inproc_address
        character*(128)	:: zmq_socket_sub_tcp_address

    File: :file:`utils.irp.f`

    Socket which pulls the results (2)




.. c:var:: zmq_socket_sub_tcp_address

    .. code:: text

        character*(128)	:: zmq_socket_pull_tcp_address
        character*(128)	:: zmq_socket_pair_inproc_address
        character*(128)	:: zmq_socket_push_tcp_address
        character*(128)	:: zmq_socket_pull_inproc_address
        character*(128)	:: zmq_socket_push_inproc_address
        character*(128)	:: zmq_socket_sub_tcp_address

    File: :file:`utils.irp.f`

    Socket which pulls the results (2)




.. c:var:: zmq_state

    .. code:: text

        character*(128)	:: zmq_state

    File: :file:`utils.irp.f`

    Threads executing work through the ZeroMQ interface




Subroutines / functions
-----------------------



.. c:function:: add_task_to_taskserver

    .. code:: text

        integer function add_task_to_taskserver(zmq_to_qp_run_socket,task)

    File: :file:`utils.irp.f`

    Get a task from the task server





.. c:function:: connect_to_taskserver

    .. code:: text

        integer function connect_to_taskserver(zmq_to_qp_run_socket,worker_id,thread)

    File: :file:`utils.irp.f`

    Connect to the task server and obtain the worker ID





.. c:function:: disconnect_from_taskserver

    .. code:: text

        integer function disconnect_from_taskserver(zmq_to_qp_run_socket, worker_id)

    File: :file:`utils.irp.f`

    Disconnect from the task server





.. c:function:: disconnect_from_taskserver_state

    .. code:: text

        integer function disconnect_from_taskserver_state(zmq_to_qp_run_socket, worker_id, state)

    File: :file:`utils.irp.f`

    Disconnect from the task server





.. c:function:: end_parallel_job

    .. code:: text

        subroutine end_parallel_job(zmq_to_qp_run_socket,zmq_socket_pull,name_in)

    File: :file:`utils.irp.f`

    End a new parallel job with name 'name'. The slave tasks execute subroutine 'slave'





.. c:function:: end_zmq_pair_socket

    .. code:: text

        subroutine end_zmq_pair_socket(zmq_socket_pair)

    File: :file:`utils.irp.f`

    Terminate socket on which the results are sent.





.. c:function:: end_zmq_pull_socket

    .. code:: text

        subroutine end_zmq_pull_socket(zmq_socket_pull)

    File: :file:`utils.irp.f`

    Terminate socket on which the results are sent.





.. c:function:: end_zmq_push_socket

    .. code:: text

        subroutine end_zmq_push_socket(zmq_socket_push,thread)

    File: :file:`utils.irp.f`

    Terminate socket on which the results are sent.





.. c:function:: end_zmq_sub_socket

    .. code:: text

        subroutine end_zmq_sub_socket(zmq_socket_sub)

    File: :file:`utils.irp.f`

    Terminate socket on which the results are sent.





.. c:function:: end_zmq_to_qp_run_socket

    .. code:: text

        subroutine end_zmq_to_qp_run_socket(zmq_to_qp_run_socket)

    File: :file:`utils.irp.f`

    Terminate the socket from the application to qp_run





.. c:function:: get_task_from_taskserver

    .. code:: text

        integer function get_task_from_taskserver(zmq_to_qp_run_socket,worker_id,task_id,task)

    File: :file:`utils.irp.f`

    Get a task from the task server





.. c:function:: get_tasks_from_taskserver

    .. code:: text

        integer function get_tasks_from_taskserver(zmq_to_qp_run_socket,worker_id,task_id,task,n_tasks)

    File: :file:`utils.irp.f`

    Get multiple tasks from the task server





.. c:function:: new_parallel_job

    .. code:: text

        subroutine new_parallel_job(zmq_to_qp_run_socket,zmq_socket_pull,name_in)

    File: :file:`utils.irp.f`

    Start a new parallel job with name 'name'. The slave tasks execute subroutine 'slave'





.. c:function:: new_zmq_pair_socket

    .. code:: text

        function new_zmq_pair_socket(bind)

    File: :file:`utils.irp.f`

    Socket on which the collector and the main communicate





.. c:function:: new_zmq_pull_socket

    .. code:: text

        function new_zmq_pull_socket()

    File: :file:`utils.irp.f`

    Socket on which the results are sent. If thread is 1, use inproc





.. c:function:: new_zmq_push_socket

    .. code:: text

        function new_zmq_push_socket(thread)

    File: :file:`utils.irp.f`

    Socket on which the results are sent. If thread is 1, use inproc





.. c:function:: new_zmq_sub_socket

    .. code:: text

        function new_zmq_sub_socket()

    File: :file:`utils.irp.f`

    Socket to read the state published by the Task server





.. c:function:: new_zmq_to_qp_run_socket

    .. code:: text

        function new_zmq_to_qp_run_socket()

    File: :file:`utils.irp.f`

    Socket on which the qp_run process replies





.. c:function:: reset_zmq_addresses

    .. code:: text

        subroutine reset_zmq_addresses

    File: :file:`utils.irp.f`

    Socket which pulls the results (2)





.. c:function:: switch_qp_run_to_master

    .. code:: text

        subroutine switch_qp_run_to_master

    File: :file:`utils.irp.f`

    Address of the master qp_run socket Example : tcp://130.120.229.139:12345





.. c:function:: task_done_to_taskserver

    .. code:: text

        integer function task_done_to_taskserver(zmq_to_qp_run_socket, worker_id, task_id)

    File: :file:`utils.irp.f`

    Get a task from the task server





.. c:function:: tasks_done_to_taskserver

    .. code:: text

        integer function tasks_done_to_taskserver(zmq_to_qp_run_socket, worker_id, task_id, n_tasks)

    File: :file:`utils.irp.f`

    Get a task from the task server





.. c:function:: wait_for_next_state

    .. code:: text

        subroutine wait_for_next_state(state)

    File: :file:`utils.irp.f`

    





.. c:function:: wait_for_state

    .. code:: text

        subroutine wait_for_state(state_wait,state)

    File: :file:`utils.irp.f`

    Wait for the ZMQ state to be ready





.. c:function:: wait_for_states

    .. code:: text

        subroutine wait_for_states(state_wait,state,n)

    File: :file:`utils.irp.f`

    Wait for the ZMQ state to be ready





.. c:function:: zmq_abort

    .. code:: text

        integer function zmq_abort(zmq_to_qp_run_socket)

    File: :file:`utils.irp.f`

    Aborts a running parallel computation





.. c:function:: zmq_delete_task

    .. code:: text

        integer function zmq_delete_task(zmq_to_qp_run_socket,zmq_socket_pull,task_id,more)

    File: :file:`utils.irp.f`

    When a task is done, it has to be removed from the list of tasks on the qp_run queue. This guarantees that the results have been received in the pull.





.. c:function:: zmq_delete_tasks

    .. code:: text

        integer function zmq_delete_tasks(zmq_to_qp_run_socket,zmq_socket_pull,task_id,n_tasks,more)

    File: :file:`utils.irp.f`

    When a task is done, it has to be removed from the list of tasks on the qp_run queue. This guarantees that the results have been received in the pull.





.. c:function:: zmq_delete_tasks_async_recv

    .. code:: text

        integer function zmq_delete_tasks_async_recv(zmq_to_qp_run_socket,zmq_socket_pull,task_id,n_tasks,more)

    File: :file:`utils.irp.f`

    When a task is done, it has to be removed from the list of tasks on the qp_run queue. This guarantees that the results have been received in the pull.





.. c:function:: zmq_delete_tasks_async_send

    .. code:: text

        integer function zmq_delete_tasks_async_send(zmq_to_qp_run_socket,zmq_socket_pull,task_id,n_tasks,more)

    File: :file:`utils.irp.f`

    When a task is done, it has to be removed from the list of tasks on the qp_run queue. This guarantees that the results have been received in the pull.





.. c:function:: zmq_get8_dvector

    .. code:: text

        integer function zmq_get8_dvector(zmq_to_qp_run_socket, worker_id, name, x, size_x)

    File: :file:`put_get.irp.f`

    Get a float vector from the qp_run scheduler





.. c:function:: zmq_get8_ivector

    .. code:: text

        integer function zmq_get8_ivector(zmq_to_qp_run_socket, worker_id, name, x, size_x)

    File: :file:`put_get.irp.f`

    Get a vector of integers from the qp_run scheduler





.. c:function:: zmq_get_dmatrix

    .. code:: text

        integer function zmq_get_dmatrix(zmq_to_qp_run_socket, worker_id, name, x, size_x1, size_x2, sze)

    File: :file:`put_get.irp.f`

    Get a float vector from the qp_run scheduler





.. c:function:: zmq_get_dvector

    .. code:: text

        integer function zmq_get_dvector(zmq_to_qp_run_socket, worker_id, name, x, size_x)

    File: :file:`put_get.irp.f`

    Get a float vector from the qp_run scheduler





.. c:function:: zmq_get_i8matrix

    .. code:: text

        integer function zmq_get_i8matrix(zmq_to_qp_run_socket, worker_id, name, x, size_x1, size_x2, sze)

    File: :file:`put_get.irp.f`

    Get a float vector from the qp_run scheduler





.. c:function:: zmq_get_imatrix

    .. code:: text

        integer function zmq_get_imatrix(zmq_to_qp_run_socket, worker_id, name, x, size_x1, size_x2, sze)

    File: :file:`put_get.irp.f`

    Get a float vector from the qp_run scheduler





.. c:function:: zmq_get_int

    .. code:: text

        integer function zmq_get_int(zmq_to_qp_run_socket, worker_id, name, x)

    File: :file:`put_get.irp.f`

    Get a vector of integers from the qp_run scheduler





.. c:function:: zmq_get_int_nompi

    .. code:: text

        integer function zmq_get_int_nompi(zmq_to_qp_run_socket, worker_id, name, x)

    File: :file:`put_get.irp.f`

    Get a vector of integers from the qp_run scheduler





.. c:function:: zmq_get_ivector

    .. code:: text

        integer function zmq_get_ivector(zmq_to_qp_run_socket, worker_id, name, x, size_x)

    File: :file:`put_get.irp.f`

    Get a vector of integers from the qp_run scheduler





.. c:function:: zmq_port

    .. code:: text

        function zmq_port(ishift)

    File: :file:`utils.irp.f`

    Return the value of the ZMQ port from the corresponding integer





.. c:function:: zmq_put8_dvector

    .. code:: text

        integer function zmq_put8_dvector(zmq_to_qp_run_socket, worker_id, name, x, size_x)

    File: :file:`put_get.irp.f`

    Put a float vector on the qp_run scheduler





.. c:function:: zmq_put8_ivector

    .. code:: text

        integer function zmq_put8_ivector(zmq_to_qp_run_socket, worker_id, name, x, size_x)

    File: :file:`put_get.irp.f`

    Put a vector of integers on the qp_run scheduler





.. c:function:: zmq_put_dmatrix

    .. code:: text

        integer function zmq_put_dmatrix(zmq_to_qp_run_socket, worker_id, name, x, size_x1, size_x2, sze)

    File: :file:`put_get.irp.f`

    Put a float vector on the qp_run scheduler





.. c:function:: zmq_put_dvector

    .. code:: text

        integer function zmq_put_dvector(zmq_to_qp_run_socket, worker_id, name, x, size_x)

    File: :file:`put_get.irp.f`

    Put a float vector on the qp_run scheduler





.. c:function:: zmq_put_i8matrix

    .. code:: text

        integer function zmq_put_i8matrix(zmq_to_qp_run_socket, worker_id, name, x, size_x1, size_x2, sze)

    File: :file:`put_get.irp.f`

    Put a float vector on the qp_run scheduler





.. c:function:: zmq_put_imatrix

    .. code:: text

        integer function zmq_put_imatrix(zmq_to_qp_run_socket, worker_id, name, x, size_x1, size_x2, sze)

    File: :file:`put_get.irp.f`

    Put a float vector on the qp_run scheduler





.. c:function:: zmq_put_int

    .. code:: text

        integer function zmq_put_int(zmq_to_qp_run_socket, worker_id, name, x)

    File: :file:`put_get.irp.f`

    Put a vector of integers on the qp_run scheduler





.. c:function:: zmq_put_ivector

    .. code:: text

        integer function zmq_put_ivector(zmq_to_qp_run_socket, worker_id, name, x, size_x)

    File: :file:`put_get.irp.f`

    Put a vector of integers on the qp_run scheduler





.. c:function:: zmq_set_running

    .. code:: text

        integer function zmq_set_running(zmq_to_qp_run_socket)

    File: :file:`utils.irp.f`

    Set the job to Running in QP-run


