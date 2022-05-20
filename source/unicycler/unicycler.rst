.. _backbone-label:

Unicycler
==============================

Introduction
~~~~~~~~
``Unicycler`` is an assembly pipeline for bacterial genomes. For more information, please check its website: https://biocontainers.pro/tools/unicycler and its home page on `Github`_.

Versions
~~~~~~~~
- 0.5.0

Commands
~~~~~~~
- unicycler

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load unicycler

Example job
~~~~~
To run Unicycler on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=unicycler
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers unicycler

.. _Github: https://github.com/rrwick/Unicycler