.. _fci:

.. program:: fci

.. default-role:: option

===
fci
===

|CIPSI| algorithm in the full configuration interaction space.

* :command:`fci` performs the |CIPSI| calculation,
* :command:`pt2` computes the |PT2| contribution using the wave function stored in the |EZFIO|
  database.

.. seealso::

    The documentation of the :ref:`cipsi` module.





EZFIO parameters
----------------

.. option:: energy

    Calculated Selected |FCI| energy


.. option:: energy_pt2

    Calculated |FCI| energy + |PT2|



Subroutines / functions
-----------------------



.. c:function:: fci

    .. code:: text

        subroutine fci

    File: :file:`fci.irp.f`

    Selected Full Configuration Interaction with stochastic selection and PT2.





.. c:function:: pt2

    .. code:: text

        subroutine pt2

    File: :file:`pt2.irp.f`

    Second order perturbative correction to the wave function contained in the EZFIO directory.





.. c:function:: save_energy

    .. code:: text

        subroutine save_energy(E,pt2)

    File: :file:`save_energy.irp.f`

    Saves the energy in |EZFIO|.


