.. _backbone-label:

STAR-Fusion
==============================

Introduction
~~~~~~~~
``STAR-Fusion`` is a component of the Trinity Cancer Transcriptome Analysis Toolkit (CTAT). For more information, please check its Docker hub: https://hub.docker.com/r/trinityctat/starfusion and its home page on `Github`_.

Versions
~~~~~~~~
- 1.11b

Commands
~~~~~~~
- STAR-Fusion

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load starfusion

Example job
~~~~~
To run STAR-Fusion on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=starfusion
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers starfusion

.. _Github: https://github.com/STAR-Fusion/STAR-Fusion/wiki