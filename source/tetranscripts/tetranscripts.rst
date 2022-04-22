.. _backbone-label:

Tetranscripts
==============================

Introduction
~~~~~~~~
``Tetranscripts`` is a package for including transposable elements in differential enrichment analysis of sequencing datasets. For more information, please check its website: https://biocontainers.pro/tools/tetranscripts and its home page on `Github`_.

Commands
~~~~~~~
- TEtranscripts
- TEcount

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load tetranscripts

Example job
~~~~~
To run Tetranscripts on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=tetranscripts
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers tetranscripts

.. _Github: https://github.com/mhammell-laboratory/TEtranscripts