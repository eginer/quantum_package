============
Data energy and density
============


This module contains some global variables (such as densities and energies) which are stored in the EZFIO folder in a different place than determinants. This is used in practice to store density matrices which can be obtained from any methods, as long as they are stored in the same MO basis which is used for the calculations. In |RS-DFT| calculations, this can be done to perform damping on the density in order to speed up convergence. 
