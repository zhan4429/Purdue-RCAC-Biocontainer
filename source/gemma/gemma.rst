.. _backbone-label:

Gemma
==============================

Introduction
~~~~~~~~
``Gemma`` is a software toolkit for fast application of linear mixed models (LMMs) and related models to genome-wide association studies (GWAS) and other large-scale data sets. For more information, please check its website: https://biocontainers.pro/tools/gemma and its home page on `Github`_.

Commands
~~~~~~~
- gemma

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load gemma

Example job
~~~~~
To run Gemma on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=gemma
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers gemma

.. _Github: https://github.com/genetics-statistics/GEMMA