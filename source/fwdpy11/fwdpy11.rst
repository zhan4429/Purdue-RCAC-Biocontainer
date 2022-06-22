.. _backbone-label:

Fwdpy11
==============================

Introduction
~~~~~~~~
Fwdpy11 is a Python package for forward-time population genetic simulation.
For more information, please check:
Docker hub: https://hub.docker.com/r/molpopgen/fwdpy11 
Home page: https://github.com/molpopgen/fwdpy11

Versions
~~~~~~~~
- 0.18.1

Commands
~~~~~~~
- python3
- python

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load fwdpy11

Example job
~~~~~
<<<<<<< HEAD
=======
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

>>>>>>> main
To run fwdpy11 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=fwdpy11
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers fwdpy11

