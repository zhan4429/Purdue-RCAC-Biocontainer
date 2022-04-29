.. _backbone-label:

Trimmomatic
==============================

Introduction
~~~~~~~~
``Trimmomatic`` is a flexible read trimming tool for Illumina NGS data. For more information, please check its website: https://biocontainers.pro/tools/trimmomatic and its home page: http://www.usadellab.org/cms/index.php?page=trimmomatic.

Commands
~~~~~~~
- trimmomatic

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load trimmomatic

Example job
~~~~~
To run Trimmomatic on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=trimmomatic
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers trimmomatic
