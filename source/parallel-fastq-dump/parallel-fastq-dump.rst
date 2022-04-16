.. _backbone-label:

Parallel-fastq-dump
==============================

Introduction
~~~~~~~~
``Parallel-fastq-dump`` is the parallel fastq-dump wrapper. For more information, please check its website: https://biocontainers.pro/tools/parallel-fastq-dump and its home page on `Github`_.

Commands
~~~~~~~
- parallel-fastq-dump

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load parallel-fastq-dump

Example job
~~~~~
To run Parallel-fastq-dump on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=parallel-fastq-dump
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers parallel-fastq-dump

.. _Github: https://github.com/rvalieris/parallel-fastq-dump