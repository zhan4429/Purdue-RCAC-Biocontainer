.. _backbone-label:

Lima
==============================

Introduction
~~~~~~~~
``Lima`` is the standard tool to identify barcode and primer sequences in PacBio single-molecule sequencing data. For more information, please check its website: https://biocontainers.pro/tools/lima and its home page: https://lima.how.

Commands
~~~~~~~
- lima

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load lima

Example job
~~~~~
To run Lima on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=lima
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers lima
