.. _backbone-label:

Pybigwig
==============================

Introduction
~~~~~~~~
``Pybigwig`` is a python extension, written in C, for quick access to bigBed files and access to and creation of bigWig files. For more information, please check its website: https://biocontainers.pro/tools/pybigwig and its home page on `Github`_.

Versions
~~~~~~~~
- 0.3.18-py36

Commands
~~~~~~~
- python
- python3

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load pybigwig

Example job
~~~~~
To run Pybigwig on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=pybigwig
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers pybigwig

.. _Github: https://github.com/deeptools/pyBigWig