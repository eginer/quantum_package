.. _fci:

.. program:: fci

.. default-role:: option

===
FCI
===

Selected Full Configuration Interaction.

The program start with a single determinant, or with the wave function in the |EZFIO| database if :option:`determinants read_wf` is |true|. Then, it will iteratively:

* Select the most important determinants from the external space and add them to the
  internal space
* If :option:`determinants s2_eig` is |true|, add all the necessary
  determinants to allow the eigenstates of |H| to be eigenstates of |S^2|
* Diagonalize |H| in the enlarged internal space
* Compute (stochastically) the second-order perturbative contribution to the energy 
* Extrapolate the variational energy by fitting
  :math:`E=E_\text{FCI} - \alpha\, E_\text{PT2}`


The number of selected determinants at each iteration will be such that the
size of the wave function will double at every iteration.



By default, the program will stop when more than one million determinants have
been selected, or when the |PT2| energy is below :math:`10^{-4}`.



EZFIO parameters
----------------

.. option:: energy

   Calculated Selected |FCI| energy


.. option:: energy_pt2

   Calculated |FCI| energy + |PT2|

