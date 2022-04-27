.. _backbone-label:

Advntr
==============================

Introduction
~~~~~~~~
``Advntr`` is a tool for genotyping Variable Number Tandem Repeats (VNTR) from sequence data. For more information, please check its website: https://biocontainers.pro/tools/advntr and its home page on `Github`_.

Commands
~~~~~~~
- advntr

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load advntr

Example job
~~~~~
To run Advntr on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=advntr
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers advntr

.. _Github: https://github.com/mehrdadbakhtiari/adVNTR