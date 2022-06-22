.. _backbone-label:

Atropos
==============================

Introduction
~~~~~~~~
``Atropos`` is a tool for specific, sensitive, and speedy trimming of NGS reads. For more information, please check its website: https://biocontainers.pro/tools/atropos and its home page on `Github`_.

Versions
~~~~~~~~
- 1.1.17

Commands
~~~~~~~
- atropos

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load atropos

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run Atropos on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=atropos
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers atropos

.. _Github: https://github.com/jdidion/atropos