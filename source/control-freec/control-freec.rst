.. _backbone-label:

Control-freec
==============================

Introduction
~~~~~~~~
``Control-freec`` is a tool for detection of copy-number changes and allelic imbalances (including LOH) using deep-sequencing data. For more information, please check its website: https://biocontainers.pro/tools/control-freec and its home page on `Github`_.

Commands
~~~~~~~
- freec

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load control-freec

Example job
~~~~~
To run Control-freec on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=control-freec
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers control-freec

    freec -conf config_chr19.txt
.. _Github: https://github.com/BoevaLab/FREEC
