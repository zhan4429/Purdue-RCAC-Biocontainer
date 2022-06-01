.. _backbone-label:

Bamsurgeon
==============================

Introduction
~~~~~~~~
``Bamsurgeon`` are tools for adding mutations to .bam files, used for testing mutation callers. For more information, please check its Docker hub: https://hub.docker.com/r/lethalfang/bamsurgeon and its home page on `Github`_.

Versions
~~~~~~~~
- 1.2

Commands
~~~~~~~
- addindel.py
- addsnv.py
- addsv.py

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load bamsurgeon

Example job
~~~~~
To run Bamsurgeon on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=bamsurgeon
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers bamsurgeon

.. _Github: https://github.com/adamewing/bamsurgeon