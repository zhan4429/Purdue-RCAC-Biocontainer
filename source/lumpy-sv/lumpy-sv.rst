.. _backbone-label:

Lumpy-sv
==============================

Introduction
~~~~~~~~
``Lumpy-sv`` is a general probabilistic framework for structural variant discovery. For more information, please check its website: https://biocontainers.pro/tools/lumpy-sv and its home page on `Github`_.

Versions
~~~~~~~~
- 0.3.1

Commands
~~~~~~~
- lumpy
- lumpyexpress

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load lumpy-sv

Example job
~~~~~
To run Lumpy-sv on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=lumpy-sv
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers lumpy-sv

.. _Github: https://github.com/arq5x/lumpy-sv