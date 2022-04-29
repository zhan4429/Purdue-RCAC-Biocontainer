.. _backbone-label:

Celltypist
==============================

Introduction
~~~~~~~~
``Celltypist`` is a tool for semi-automatic cell type annotation. For more information, please check its website: https://biocontainers.pro/tools/celltypist and its home page on `Github`_.

Commands
~~~~~~~
- celltypist
- python
- python3

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load celltypist

Example job
~~~~~
To run Celltypist on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=celltypist
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers celltypist

.. _Github: https://github.com/Teichlab/celltypist