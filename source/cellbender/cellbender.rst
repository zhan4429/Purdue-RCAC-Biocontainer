.. _backbone-label:

Cellbender
==============================

Introduction
~~~~~~~~
``Cellbender`` is a software package for eliminating technical artifacts from high-throughput single-cell RNA sequencing (scRNA-seq) data. For more information, please check its website: https://biocontainers.pro/tools/cellbender and its home page on `Github`_.

Commands
~~~~~~~
- cellbender

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load cellbender

Example job
~~~~~
To run Cellbender on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=cellbender
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers cellbender

.. _Github: https://github.com/broadinstitute/CellBender