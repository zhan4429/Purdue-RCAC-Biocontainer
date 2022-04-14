.. _backbone-label:

Muscle
==============================

Introduction
~~~~~~~~
``Muscle`` is a modified progressive alignment algorithm which has comparable accuracy to MAFFT, but faster performance. For more information, please check its website: https://biocontainers.pro/tools/muscle and its home page: http://www.drive5.com/muscle/muscle_userguide3.8.html.

Commands
~~~~~~~
- muscle

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load muscle

Example job
~~~~~
To run Muscle on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=muscle
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers muscle
