.. _backbone-label:

Tobias
==============================

Introduction
~~~~~~~~
``Tobias`` is a collection of command-line bioinformatics tools for performing footprinting analysis on ATAC-seq data. For more information, please check its website: https://biocontainers.pro/tools/tobias and its home page on `Github`_.

Versions
~~~~~~~~
- 0.13.3-py37

Commands
~~~~~~~
- TOBIAS

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load tobias

Example job
~~~~~
To run Tobias on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=tobias
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers tobias

.. _Github: https://github.com/loosolab/TOBIAS