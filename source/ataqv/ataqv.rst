.. _backbone-label:

Ataqv
==============================

Introduction
~~~~~~~~
``Ataqv`` is a toolkit for measuring and comparing ATAC-seq results, made in the Parker lab at the University of Michigan. For more information, please check its website: https://biocontainers.pro/tools/ataqv and its home page on `Github`_.

Versions
~~~~~~~~
- 1.3.0-py39

Commands
~~~~~~~
- ataqv

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load ataqv

Example job
~~~~~
To run Ataqv on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=ataqv
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers ataqv

.. _Github: https://github.com/ParkerLab/ataqv