.. _backbone-label:

SortMeRNA
==============================

Introduction
~~~~~~~~
``SortMeRNA`` is a local sequence alignment tool for filtering, mapping and clustering. For more information, please check its website: https://biocontainers.pro/tools/sortmerna and its home page on `Github`_.

Versions
~~~~~~~~
- 2.1b
- 4.3.4

Commands
~~~~~~~
- sortmerna

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load sortmerna

Example job
~~~~~
To run SortMeRNA on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=sortmerna
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers sortmerna

.. _Github: https://github.com/biocore/sortmerna