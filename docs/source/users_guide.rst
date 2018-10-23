User's guide
============

The input data is stored in a `EZFIO`_ database. It is a hierarchical data
format which uses the hierarchy of the file system to organize the data, stored
in a directory.
To access the data in the EZFIO file, you can use the provided API (Fortran,
Python, OCaml or bash), or tools such as `qp_edit` provided with the Quantum
Package. The data in the EZFIO directory is stroed as plain text files, so 
it can be read with a text editor.
To create an EZFIO directory from scratch, the `qp_create_ezfio_from_xyz` should
be used.

qp_create_ezfio_from_xyz
------------------------

Usage ::

   qp_create_ezfio_from_xyz [FLAGS] (xyz_file|zmt_file) 

Flags ::

   -b string      Name of basis set.
   [-au]          Input geometry is in atomic units.
   [-c int]       Total charge of the molecule. Default is 0.
   [-cart]        Compute AOs in the Cartesian basis set (6d, 10f, ...)
   [-d float]     Add dummy atoms. x * (covalent radii of the atoms)
   [-m int]       Spin multiplicity (2S+1) of the molecule. Default is 1.
   [-o file]      Name of the created EZFIO file.
   [-p string]    Name of the pseudopotential
   [-build-info]  print info about this build and exit
   [-version]     print the version of this build and exit
   [-help]        print this help text and exit
                  (alias: -?)


This command creates an EZFIO directory from a standard xyz file or from a
z-matrix file in Gaussian format. The basis set is defined as a single string
if all the atoms are taken from the same basis set, otherwise specific elements
can be defined as follows::

   -b "cc-pcvdz | H:cc-pvdz | C:6-31g"
   -b "cc-pvtz | 1,H:sto-3g | 3,H:6-31g"

If a file with the same name as the basis set exists, this file will be read.
Basis set files should be given in GAMESS format. Otherwise, the basis set is
obtained from the local database of the Quantum Package.

The same rules apply for pseudopotentials.


qp_set_mo_class
---------------

Usage ::

  qp_set_mo_class EZFIO_DIRECTORY


Flags ::

  [-act range]    Range of active orbitals
  [-core range]   Range of core orbitals
  [-del range]    Range of deleted orbitals
  [-inact range]  Range of inactive orbitals
  [-q]            Query: print the current masks
  [-virt range]   Range of virtual orbitals
  [-build-info]   print info about this build and exit
  [-version]      print the version of this build and exit
  [-help]         print this help text and exit
                  (alias: -?)

This command sets the orbital classes in an EZFIO directory.

Core
  MOs which are always doubly occupied

Deleted
  MOs which are never occupied 

Active 
  MOs in which any number of holes/particles can be made

Inactive 
  MOs in which only holes can be made

Virtual  
  MOs in which only particles can be made

To avoid errors, all the MOs should be given a class.
The range of MOs are given like the ranges in SLURM commands. For example,
`"[36-53,72-107,126-131]"`.

To quickly setup a frozen core calculation, the script `qp_set_frozen_core.py`
can be used::

  qp_set_frozen_core.py EZFIO_DIRECTORY

.. warning::
   For atoms on the right of the periodic table, `qp_set_frozen_core.py` will
   work as expected. But for atoms on the left, a small core will be chosen. For
   example, a carbon atom will have 2 core electrons, but a Lithium atom will have
   zero.

        

Excited states
--------------

It is possible to run excited states calculations with the quantum package.  To
do this, set the `n_states` variable in the `Determinants` section to the
number of requested states.  The selection criterion will be the maximum of the
selection criteria for each state.  If the Davidson diagonalization has
difficulties to converge, increase the `n_states_diag` variable in the
`Davidson` section.

When computing multiple states, it is good to have the `s2_eig` flag of the
`Determinants` section set to `true`. This will force the Davidson algorithm to
choose only vectors with a value of S^2 equal to the ``expected_s2``.
Otherwise, different spin states will come out in the diagonalization.

To include excited state of  all possible symmetries, a simple trick is to
run a preliminary multi-state CIS calculation, and then running the selected
FCI restarting from the CIS states, setting the `read_wf` flag of the
`Determinants` section tp `true`.

Usually, it is good practice to use state-averaged MOs so that all states have
MOs of comparable quality. For example, when searching for a singly excited
state, one can use state-average natural orbitals of a preliminary CIS
calculation.



Natural orbitals
----------------

To produce state-average natural orbitals, run

```
qp_run save_natorb file.ezfio
```

The MOs will be replaced, so the two-electron integrals and the wave function are invalidated as well.



The QP doesn't take account of the symmetry. For reasons due to numerical noise,
excited states of different symmetries may enter in the calculation.
Note that it is possible to make state-average calculation of states with different
symmetries and/or different spin multiplicities.


.. _EZFIO: http://gitlab.com/scemama/EZFIO





.. important:: TODO

  .. include:: work.rst

  * qp_edit
  * qp_run
  * qp_convert
  * Interfaces : molden/fcidump
  * Natural orbitals
  * Parameters for Hartree-Fock
  * Parameters for Davidson
  * Running in parallel
  * Parameters for selection (Generators/selectors)

