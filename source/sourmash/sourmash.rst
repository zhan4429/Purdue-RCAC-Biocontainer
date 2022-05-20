.. _backbone-label:

Sourmash
==============================

Introduction
~~~~~~~~
``Sourmash`` is a tool for quickly search, compare, and analyze genomic and metagenomic data sets. For more information, please check its website: https://biocontainers.pro/tools/sourmash and its home page on `Github`_.

Versions
~~~~~~~~
- 4.3.0

Commands
~~~~~~~
- sourmash

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load sourmash

Example job
~~~~~
To run Sourmash on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=sourmash
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers sourmash

.. _Github: https://github.com/sourmash-bio/sourmash