.. _backbone-label:

Svaba
==============================

Introduction
~~~~~~~~
SvABA is a method for detecting structural variants in sequencing data using genome-wide local assembly.
For more information, please check:
BioContainers: https://biocontainers.pro/tools/svaba 
Home page: https://github.com/walaj/svaba

Versions
~~~~~~~~
- 1.1.0

Commands
~~~~~~~
- svaba

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load svaba

Example job
~~~~~
To run svaba on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=svaba
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers svaba

