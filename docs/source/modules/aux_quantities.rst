.. _aux_quantities:

.. program:: aux_quantities

.. default-role:: option

============
Data energy and density
============


This module contains some global variables (such as densities and energies) which are stored in the EZFIO folder in a different place than determinants. This is used in practice to store density matrices which can be obtained from any methods, as long as they are stored in the same MO basis which is used for the calculations. In |RS-DFT| calculations, this can be done to perform damping on the density in order to speed up convergence. 



EZFIO parameters
----------------

.. option:: data_energy_var

    Variational energy computed with the wave function


.. option:: data_energy_proj

    Projected energy computed with the wave function


.. option:: data_one_body_alpha_dm_mo

    Alpha one body density matrix on the MO basis computed with the wave function


.. option:: data_one_body_beta_dm_mo

    Beta one body density matrix on the MO basis computed with the wave function

