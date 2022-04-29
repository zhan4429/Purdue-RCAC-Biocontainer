.. _backbone-label:

Trim-galore
==============================

Introduction
~~~~~~~~
``Trim-galore`` is a wrapper tool that automates quality and adapter trimming to FastQ files. For more information, please check its website: https://biocontainers.pro/tools/trim-galore and its home page: https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/.

Commands
~~~~~~~
- trim_galore

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load trim-galore

Example job
~~~~~
To run Trim-galore on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=trim-galore
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers trim-galore
