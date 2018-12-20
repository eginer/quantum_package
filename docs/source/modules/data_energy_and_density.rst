.. _data_energy_and_density:

.. program:: data_energy_and_density

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



Subroutines / functions
-----------------------



.. c:function:: routine

    .. code:: text

        subroutine routine

    File: :file:`save_one_body_dm.irp.f`

    





.. c:function:: save_one_body_dm

    .. code:: text

        subroutine save_one_body_dm

    File: :file:`save_one_body_dm.irp.f`

    programs that computes the one body density on the mo basis for alpha and beta electrons from the wave function stored in the EZFIO folder, and then save it into the EZFIO folder data_energy_and_density. 
    Then, the global variable data_one_body_alpha_dm_mo and data_one_body_beta_dm_mo will automatically read the density in a further calculation. 
    This can be used to perform dampin on the density in RS-DFT calculation (see the density_for_dft module).


