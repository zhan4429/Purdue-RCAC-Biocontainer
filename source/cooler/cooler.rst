.. _backbone-label:

Cooler
==============================

Introduction
~~~~~~~~
``Cooler`` is a support library for a sparse, compressed, binary persistent storage format, also called cooler, used to store genomic interaction data, such as Hi-C contact matrices. For more information, please check its website: https://biocontainers.pro/tools/cooler and its home page on `Github`_.

Commands
~~~~~~~
- cooler
- python
- python3

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load Cooler

Example job
~~~~~
To run Cooler on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=cooler
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers cooler

.. _Github: https://github.com/open2c/cooler