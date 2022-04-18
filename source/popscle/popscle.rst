.. _backbone-label:

Popscle
==============================

Introduction
~~~~~~~~
``Popscle`` is a suite of population scale analysis tools for single-cell genomics data. For more information, please check its Docker hub: https://hub.docker.com/r/cumulusprod/popscle and its home page on `Github`_.

Commands
~~~~~~~
- popscle

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load popscle

Example job
~~~~~
To run Popscle on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=popscle
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers popscle

.. _Github: https://github.com/statgen/popscle