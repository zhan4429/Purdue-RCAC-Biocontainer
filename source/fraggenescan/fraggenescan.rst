.. _backbone-label:

Fraggenescan
==============================

Introduction
~~~~~~~~
``Fraggenescan`` is an application for finding (fragmented) genes in short reads. It can also be applied to predict prokaryotic genes in incomplete assemblies or complete genomes. For more information, please check its website: https://biocontainers.pro/tools/fraggenescan and its home page on `Github`_.

Versions
~~~~~~~~
- 1.31

Commands
~~~~~~~
- FragGeneScan
- run_FragGeneScan.pl

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load fraggenescan

Example job
~~~~~
To run Fraggenescan on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=fraggenescan
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers fraggenescan

.. _Github: https://github.com/gaberoo/FragGeneScan