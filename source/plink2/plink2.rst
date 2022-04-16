.. _backbone-label:

Plink2
==============================

Introduction
~~~~~~~~
``Plink2`` is a whole genome association analysis toolset. For more information, please check its website: https://biocontainers.pro/tools/plink2 and its home page on `Github`_.

Commands
~~~~~~~
- plink2

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load plink2

Example job
~~~~~
To run Plink2 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=plink2
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers plink2

.. _Github: https://bioconda.github.io/recipes/plink2/README.html 