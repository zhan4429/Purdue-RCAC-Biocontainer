.. _backbone-label:

Alfred
==============================

Introduction
~~~~~~~~
``Alfred`` is an efficient and versatile command-line application that computes multi-sample quality control metrics in a read-group aware manner. For more information, please check its website: https://biocontainers.pro/tools/alfred and its home page on `Github`_.

Commands
~~~~~~~
- alfred

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load alfred

Example job
~~~~~
To run Alfred on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=alfred
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers alfred

.. _Github: https://github.com/tobiasrausch/alfred