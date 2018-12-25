.. _qp_test:

=======
qp_test
=======

This command runs the consistency test of |qp|. The tests are run with the |Bats| shell testing environment.

Usage
-----

.. code:: bash

    qp_test [FLAGS] 
    Flags :
      [-a]          Run all the tests
      [-v]          Verbose mode: shows the output of the runs


.. option:: -a

   Runs all the tests. By default, run only the tests of the current
   directory, and the directories below.

.. option:: -v

   Verbose mode. Print the output of the running executions of |qp|.



