.. _backbone-label:

Hail
==============================

Introduction
~~~~~~~~
Hail is an open-source, general-purpose, Python-based data analysis tool with additional data types and methods for working with genomic data.
For more information, please check:
Docker hub: https://hub.docker.com/r/hailgenetics/hail 
Home page: https://github.com/hail-is/hail

Versions
~~~~~~~~
- 0.2.94

Commands
~~~~~~~
- python3

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load hail

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run hail on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=hail
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers hail

