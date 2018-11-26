.. _mpi:

.. program:: mpi

.. default-role:: option

===
MPI
===

Contains all the functions and providers for parallelization with |MPI|.



Providers
---------


.. c:var:: mpi_initialized

    .. code:: text

        logical	:: mpi_initialized

    File: :file:`mpi.irp.f`

    Always true. Initialized MPI




.. c:var:: mpi_master

    .. code:: text

        logical	:: mpi_master

    File: :file:`mpi.irp.f`

    If true, rank is zero




.. c:var:: mpi_rank

    .. code:: text

        integer	:: mpi_rank
        integer	:: mpi_size

    File: :file:`mpi.irp.f`

    Rank of MPI process and number of MPI processes




.. c:var:: mpi_size

    .. code:: text

        integer	:: mpi_rank
        integer	:: mpi_size

    File: :file:`mpi.irp.f`

    Rank of MPI process and number of MPI processes




Subroutines / functions
-----------------------



.. c:function:: broadcast_chunks_double

    .. code:: text

        subroutine broadcast_chunks_double(A, LDA)

    File: :file:`mpi.irp.f_template_97`

    Broadcast with chunks of ~2GB





.. c:function:: broadcast_chunks_integer

    .. code:: text

        subroutine broadcast_chunks_integer(A, LDA)

    File: :file:`mpi.irp.f_template_97`

    Broadcast with chunks of ~2GB





.. c:function:: broadcast_chunks_integer8

    .. code:: text

        subroutine broadcast_chunks_integer8(A, LDA)

    File: :file:`mpi.irp.f_template_97`

    Broadcast with chunks of ~2GB


