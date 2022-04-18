.. _backbone-label:

Nanoplot
==============================

Introduction
~~~~~~~~
``Nanoplot`` is a plotting tool for long read sequencing data and alignments. For more information, please check its website: https://biocontainers.pro/tools/nanoplot and its home page on `Github`_.

Commands
~~~~~~~
- NanoPlot

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load nanoplot

Example job
~~~~~
To run Nanoplot on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=nanoplot
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers nanoplot

.. _Github: https://github.com/wdecoster/NanoPlot