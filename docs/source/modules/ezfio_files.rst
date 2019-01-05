.. _ezfio_files:

.. program:: ezfio_files

.. default-role:: option

===========
ezfio_files
===========

This modules essentially contains the name of the |EZFIO| directory in the
:c:data:`ezfio_filename` variable. This is read as the first argument of the
command-line, or as the :envvar:`QP_INPUT` environment variable.




Providers
---------


.. c:var:: ezfio_filename

    .. code:: text

        character*(128)	:: ezfio_filename

    File: :file:`ezfio.irp.f`

    Name of EZFIO file. It is obtained from the QPACKAGE_INPUT environment variable if it is set, or as the 1st argument of the command line.




.. c:var:: ezfio_work_dir

    .. code:: text

        character*(128)	:: ezfio_work_dir

    File: :file:`ezfio.irp.f`

    EZFIO/work/




.. c:var:: output_cpu_time_0

    .. code:: text

        double precision	:: output_wall_time_0
        double precision	:: output_cpu_time_0

    File: :file:`output.irp.f`

    Initial CPU and wall times when printing in the output files




.. c:var:: output_wall_time_0

    .. code:: text

        double precision	:: output_wall_time_0
        double precision	:: output_cpu_time_0

    File: :file:`output.irp.f`

    Initial CPU and wall times when printing in the output files




Subroutines / functions
-----------------------



.. c:function:: getunitandopen

    .. code:: text

        integer function getUnitAndOpen(f,mode)

    File: :file:`get_unit_and_open.irp.f`

    :f: file name 

    :mode: 'R' : READ, UNFORMATTED 'W' : WRITE, UNFORMATTED 'r' : READ, FORMATTED 'w' : WRITE, FORMATTED 'a' : APPEND, FORMATTED 'x' : READ/WRITE, FORMATTED 







.. c:function:: write_bool

    .. code:: text

        subroutine write_bool(iunit,value,label)

    File: :file:`output.irp.f`

    Write an logical value in output





.. c:function:: write_double

    .. code:: text

        subroutine write_double(iunit,value,label)

    File: :file:`output.irp.f`

    Write a double precision value in output





.. c:function:: write_int

    .. code:: text

        subroutine write_int(iunit,value,label)

    File: :file:`output.irp.f`

    Write an integer value in output





.. c:function:: write_time

    .. code:: text

        subroutine write_time(iunit)

    File: :file:`output.irp.f`

    Write a time stamp in the output for chronological reconstruction


