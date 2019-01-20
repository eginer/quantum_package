.. _qp_run:

======
qp_run
======

.. TODO

.. program:: qp_run

Command used to run a calculation.

If the ``USR1`` signal is sent to :ref:`qp_run`, the application will
call :ref:`qp_stop` to request a clean termination. In a SLURM script,
you can ask SLURM to send the ``USR1`` signal 120 seconds before end of
the time limit with ::

    #SBATCH --signal=B:USR1@120


Usage
-----

.. code:: bash

  qp_run [-h] [-p <string>] [-s] [--] PROGRAM EZFIO_DIR

``PROGRAM`` is the name of the |QP| program to be run, and ``EZFIO_DIR``
is the name of the |EZFIO| directory containing the data.


.. option:: -h, --help

   Displays the list of available |qp| programs. 


.. option:: -p <string>, --prefix=<string>

   Prefix before running the program. This option is used to run
   programs like like gdb or valgrind.


.. option:: -s, --slave

   This option needs to be set to run a slave job for ``PROGRAM``, to
   accelerate another running instance of the |qp|.


Example
-------

.. code:: bash

   qp_run fci h2o.ezfio &
   srun qp_run --slave fci h2o.ezfio
   wait


