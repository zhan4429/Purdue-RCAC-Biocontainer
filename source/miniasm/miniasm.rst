.. _backbone-label:

Miniasm
==============================

Introduction
~~~~~~~~
``Miniasm`` is a very fast OLC-based de novo assembler for noisy long reads. For more information, please check its website: https://biocontainers.pro/tools/miniasm and its home page on `Github`_.

Commands
~~~~~~~
- miniasm
- minidot

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load miniasm

Example job
~~~~~
To run Miniasm on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=miniasm
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers miniasm

.. _Github:  https://github.com/lh3/miniasm