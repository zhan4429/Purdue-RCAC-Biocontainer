.. _backbone-label:

Skewer
==============================

Introduction
~~~~~~~~
``Skewer`` is a fast and accurate adapter trimmer for paired-end reads. For more information, please check its website: https://biocontainers.pro/tools/skewer and its home page on `Github`_.

Versions
~~~~~~~~
- 0.2.2

Commands
~~~~~~~
- skewer

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load skewer

Example job
~~~~~
To run Skewer on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=skewer
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers skewer

.. _Github: https://github.com/relipmoc/skewer.git