Buildout for Salt
=================

Basic Installation
------------------

1. Using the system package management tool, install `gcc`,
   `swig`, `zlib` and other basic development libraries.

2. Run `installpy27.sh`

   ::

     ./installpy27.sh

3. Run `install.py`

   ::

     ./usr/bin/python2.7 install.py

Running Master
--------------

1. Copy `etc/master.template` to `etc/master`

   ::

     cp etc/master.template etc/master

2. Edit `etc/master` and change default settings, if required.

3. Run Salt master

   ::

     ./bin/salt-master -c etc/master


Running Minion
--------------

1. Copy `etc/minion.template` to `etc/minion`

   ::

     cp etc/minion.template etc/minion

2. Edit `etc/minion` and change default settings, if required.

3. Run Salt minion

   ::

     ./bin/salt-minion -c etc/minion
