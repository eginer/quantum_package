.. _dft_keywords:

.. program:: dft_keywords

.. default-role:: option

============
DFT Keywords
============

This module contains all keywords which are related to a DFT calculation





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

.. option:: density_for_dft

    Type of density used for DFT calculation. If WFT it uses the density of the WFT stored in terms of determinants. If input_density it uses the one-body dm stored in data_.../ . If damping_rs_dft it uses the damping density between WFT and input_density

    Default: WFT

.. option:: damping_for_rs_dft

    damping factor for the density used in RSFT.

    Default: 0.5
