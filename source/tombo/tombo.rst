.. _backbone-label:

Tombo
==============================

Introduction
~~~~~~~~
``Tombo`` is a suite of tools primarily for the identification of modified nucleotides from nanopore sequencing data. Tombo also provides tools for the analysis and visualization of raw nanopore signal. For more information, please check its website: https://biocontainers.pro/tools/ont-tombo and its home page on `Github`_.

Versions
~~~~~~~~
- 1.5.1

Commands
~~~~~~~
- tombo

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load tombo

Example job
~~~~~
To run Tombo on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=tombo
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers tombo

.. _Github: https://github.com/nanoporetech/tombo