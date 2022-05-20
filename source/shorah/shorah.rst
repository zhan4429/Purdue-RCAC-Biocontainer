.. _backbone-label:

Shorah
==============================

Introduction
~~~~~~~~
``Shorah`` is an open source project for the analysis of next generation sequencing data. For more information, please check its website: https://biocontainers.pro/tools/shorah and its home page on `Github`_.

Versions
~~~~~~~~
- 1.99.2-py37

Commands
~~~~~~~
- shorah
- b2w
- diri_sampler
- fil

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load shorah

Example job
~~~~~
To run Shorah on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=shorah
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers shorah

.. _Github: https://github.com/cbg-ethz/shorah