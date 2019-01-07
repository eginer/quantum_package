.. _qp_plugins:

==========
qp_plugins
==========

.. program:: qp_plugins

This command deals with all external plugings of |qp|. Plugin repositories can
be downloaded, and the plugins in these repositories can be
installed/uninstalled of created. 

Usage
-----

.. code:: bash

    qp_plugins list [ -i | -u | -q ]
    qp_plugins download <url>
    qp_plugins install <name>...
    qp_plugins uninstall <name>
    qp_plugins create -n <name> [-r <repository>] [<needed_modules>...]

.. option:: list

    List all the available plugins.

.. option:: -i 

    List all the *installed* plugins.

.. option:: -u

    List all the *uninstalled* plugins.

.. option:: -q 

    List all the downloaded repositories.

.. option:: download <url>

    Download an external repository. The URL points to a tar.gz file or a
    git repository, for example:

    * http://example.com/site/example.tar.gz
    * git@gitlab.com:user/example_repository

.. option:: install <plugin_name>

    Install the plugin ``plugin_name``.

.. option:: uninstall <plugin_name>

    Uninstall the plugin ``plugin_name``.

.. option:: -n <plugin_name>

    Create a new plugin named ``plugin_name`` (in local repository by default).

.. option:: -r <repository>

    Specify in which repository the new plugin will be created.


