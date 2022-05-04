.. _backbone-label:

Smoove
==============================

Introduction
~~~~~~~~
``Smoove`` simplifies and speeds calling and genotyping SVs for short reads. For more information, please check its website: https://biocontainers.pro/tools/smoove and its home page on `Github`_.

Commands
~~~~~~~
- smoove

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load smoove

Example job
~~~~~
To run Smoove on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=smoove
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers smoove

.. _Github: https://github.com/brentp/smoove