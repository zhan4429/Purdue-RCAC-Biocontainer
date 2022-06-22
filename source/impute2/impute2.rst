.. _backbone-label:

Impute2
==============================

Introduction
~~~~~~~~
``Impute2`` is a genotype imputation and haplotype phasing program. For more information, please check its website: https://biocontainers.pro/tools/impute2 and its home page: https://mathgen.stats.ox.ac.uk/impute/impute_v2.html#home.

Versions
~~~~~~~~
- 2.3.2

Commands
~~~~~~~
- impute2

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load impute2

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run Impute2 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=impute2
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers impute2
