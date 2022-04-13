.. _backbone-label:

BEAST 2
==============================

Introduction
~~~~~~~~
``BEAST 2`` is a cross-platform program for Bayesian phylogenetic analysis of molecular sequences. For more information, please check its website: https://biocontainers.pro/tools/beast2 and its home page: https://www.beast2.org.

Commands
~~~~~~~
- applauncher
- beast
- beauti
- densitree
- loganalyser
- logcombiner
- packagemanager
- treeannotator

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load beast2

Example job
~~~~~
To run BEAST 2 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 4
    #SBATCH --job-name=beast2
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers beast2
  
    beast -threads 4 -prefix input input.xml
