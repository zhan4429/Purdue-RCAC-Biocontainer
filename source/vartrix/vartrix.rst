.. _backbone-label:

Vartrix
==============================

Introduction
~~~~~~~~
``Vartrix`` is a software tool for extracting single cell variant information from 10x Genomics single cell data. For more information, please check its website: https://biocontainers.pro/tools/vartrix and its home page on `Github`_.

Commands
~~~~~~~
- vartrix

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load vartrix

Example job
~~~~~
To run Vartrix on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=vartrix
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers vartrix

.. _Github: https://github.com/10XGenomics/vartrix