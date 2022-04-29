.. _backbone-label:

Nanopolish
==============================

Introduction
~~~~~~~~
``Nanopolish`` is a software package for signal-level analysis of Oxford Nanopore sequencing data. For more information, please check its website: https://biocontainers.pro/tools/nanopolish and its home page on `Github`_.

Commands
~~~~~~~
- nanopolish

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load nanopolish

Example job
~~~~~
To run Nanopolish on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=nanopolish
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers nanopolish

.. _Github: https://github.com/jts/nanopolish