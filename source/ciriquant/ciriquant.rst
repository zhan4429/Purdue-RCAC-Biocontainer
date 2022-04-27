.. _backbone-label:

CIRIquant
==============================

Introduction
~~~~~~~~
``CIRIquant`` is a comprehensive analysis pipeline for circRNA detection and quantification in RNA-Seq data. For more information, please check its Docker hub: https://hub.docker.com/r/mortreux/ciriquant and its home page on `Github`_.

Commands
~~~~~~~
- CIRIquant

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load ciriquant

Example job
~~~~~
To run CIRIquant on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=ciriquant
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers ciriquant

.. _Github: https://github.com/bioinfo-biols/CIRIquant