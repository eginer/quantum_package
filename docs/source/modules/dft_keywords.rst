.. _dft_keywords:

.. program:: dft_keywords

.. default-role:: option

============
DFT Keywords
============

This module contains the main keywords related to a DFT calculation or RS-DFT calculation, such as:

# :option:exchange_functional
# :option:correlation_functional
# :option:HF_exchange  : only relevent for the :ref:`ks_scf` program
# :option:density_for_dft : mainly relevent for multi-determinant range separated DFT, see the plugins of eginer. 

The keyword for the range separation parameter :math:`\mu` is the :option:`ao_two_e_erf_integrals mu_erf` keyword. 



EZFIO parameters
----------------

.. option:: exchange_functional

    name of the exchange functional

    Default: short_range_LDA

.. option:: correlation_functional

    name of the correlation functional

    Default: short_range_LDA

.. option:: HF_exchange

    Percentage of HF exchange in the DFT model

    Default: 0.


Providers
---------


.. c:var:: dft_type

    .. code:: text

        character*(32)	:: dft_type

    File: :file:`keywords.irp.f`

    defines the type of DFT applied: LDA, GGA etc ...


