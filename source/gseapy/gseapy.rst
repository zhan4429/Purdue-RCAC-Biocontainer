.. _backbone-label:

Gseapy
==============================

Introduction
~~~~~~~~
``Gseapy`` is a python wrapper for GESA and Enrichr. For more information, please check its website: https://biocontainers.pro/tools/gseapy and its home page: https://gseapy.readthedocs.io/en/latest/introduction.html.

Versions
~~~~~~~~
- 0.10.8

Commands
~~~~~~~
- gseapy
- python
- python3

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load gseapy

Example job
~~~~~
To run Gseapy on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=gseapy
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers gseapy
