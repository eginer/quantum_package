==========
MOs Module
==========

Molecular orbitals are expressed as 

.. math::

  \phi_k({\bf r}) = \sum_i C_{ik} \chi_k({\bf r})

where :math:`\chi_k` are *normalized* atomic basis set.

The current set of molecular orbitals has a label ``mo_label``.
When the orbitals are modified, the label should also be updated to keep
everything consistent.

When saving the MOs, the ``mo_basis`` directory of the EZFIO file is copied
in the ``save`` directory, named by the current ``mo_label``. All this is
done with the script named ``save_current_mos.sh`` in the ``scripts`` directory.

ASSUMPTONS
==========

* The AO basis functions are normalized.


