.. _backbone-label:

Rebaler
==============================

Introduction
~~~~~~~~
``Rebaler`` is a program for conducting reference-based assemblies using long reads. For more information, please check its website: https://biocontainers.pro/tools/rebaler and its home page on `Github`_.

Commands
~~~~~~~
- rebaler

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load rebaler

Example job
~~~~~
To run Rebaler on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=rebaler
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers rebaler

.. _Github: https://github.com/rrwick/Rebaler