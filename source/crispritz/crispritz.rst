.. _backbone-label:

Crispritz
==============================

Introduction
~~~~~~~~
``Crispritz`` is a software package containing 5 different tools dedicated to perform predictive analysis and result assessement on CRISPR/Cas experiments. For more information, please check its website: https://biocontainers.pro/tools/crispritz and its home page on `Github`_.

Commands
~~~~~~~
- crispritz.py

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load crispritz

Example job
~~~~~
To run Crispritz on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=crispritz
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers crispritz

.. _Github: https://github.com/pinellolab/CRISPRitz