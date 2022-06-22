.. _backbone-label:

Vsearch
==============================

Introduction
~~~~~~~~
``Vsearch`` is a versatile open source tool for metagenomics. For more information, please check its website: https://biocontainers.pro/tools/vsearch and its home page on `Github`_.

Versions
~~~~~~~~
- 2.19.0
- 2.21.1

Commands
~~~~~~~
- vsearch

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load vsearch

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run Vsearch on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=vsearch
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers vsearch

.. _Github: https://github.com/torognes/vsearch