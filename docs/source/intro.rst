Introduction
============

What it is
""""""""""

The |qp| is an open-source programming environment for quantum chemistry,
especially for `wave function methods <https://en.wikipedia.org/wiki/Ab_initio_quantum_chemistry_methods>`_.
The main goal is the development of selected configuration interaction (sCI)
methods and multi-reference perturbation theory (MR-PT) in the
determinant-driven paradigm.  The determinant-driven framework allows the
programmer to include any arbitrary set of determinants in the variational
space, and thus gives a complete freedom in the methodological development. All
the programs are developed with the `IRPF90`_ code generator, which simplifies
the development of new programs.



What it is not
""""""""""""""

The |qp| is *not* a general purpose quantum chemistry program.
First of all, it is a library. The users of the |qp| should develop
their own programs.

The |qp| has been designed specifically for sCI, so all the
algorithms which are programmed are not adapted to run SCF or DFT calculations
on thousands of atoms. 

The |qp| is *not* a massive production code. For conventional
methods such as Hartree-Fock CISD or MP2, the users are recommended to use the
existing standard production codes which are designed to make these methods run
fast. Again, the role of the |qp| is to make life simple for the
developer. Once a new method is developed and tested, the developer is encouraged
to consider re-expressing it with an integral-driven formulation, and to 
implement the new method is open-source production codes, such as `NWChem`_
or `GAMESS`_.


Applications
""""""""""""

Multiple programs were developed with the |qp|, such as:

- Selected Full-CI + Epstein-Nesbet PT2 (CIPSI)
- Hybrid stochastic/deterministic MR-PT2
- CIS, CISD, MP2
- Selected CISD
- Jeziorsky-Monkhorst MR-PT2
- Selected CAS+SD
- Selected difference-dedicated CI (DD-CI)
- Multi-Reference Coupled Cluster (MR-CCSD)
- CIPSI with range-separated DFT

All these programs can generate ground and excited states, and spin pure wave functions
(eigenstates of S²).


.. Links ..

.. _IRPF90: http://irpf90.ups-tlse.fr
.. _NWChem: http://www.nwchem-sw.org/
.. _GAMESS: https://www.msg.chem.iastate.edu/gamess/

.. |qp| replace:: Quantum Package
