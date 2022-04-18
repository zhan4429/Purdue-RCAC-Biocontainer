.. _backbone-label:

Pandaseq
==============================

Introduction
~~~~~~~~
``Pandaseq`` is a program to align Illumina reads, optionally with PCR primers embedded in the sequence, and reconstruct an overlapping sequence. For more information, please check its Docker hub: https://hub.docker.com/r/pipecraft/pandaseq and its home page on `Github`_.

Commands
~~~~~~~
- pandaseq

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load pandaseq

Example job
~~~~~
To run Pandaseq on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=pandaseq
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers pandaseq

.. _Github: https://github.com/neufeld/pandaseq