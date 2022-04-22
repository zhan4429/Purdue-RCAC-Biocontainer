.. _backbone-label:

Trimal
==============================

Introduction
~~~~~~~~
``Trimal`` is a tool for the automated removal of spurious sequences or poorly aligned regions from a multiple sequence alignment. For more information, please check its website: https://biocontainers.pro/tools/trimal and its home page: http://trimal.cgenomics.org.

Commands
~~~~~~~
- trimal
- readal
- statal

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load trimal

Example job
~~~~~
To run Trimal on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=trimal
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers trimal
