.. _backbone-label:

Trnascan-se
==============================

Introduction
~~~~~~~~
``Trnascan-se`` is a convenient, ready-for-use means to identify tRNA genes in one or more query sequences. For more information, please check its website: https://biocontainers.pro/tools/trnascan-se and its home page: http://lowelab.ucsc.edu/tRNAscan-SE/.

Commands
~~~~~~~
- tRNAscan-SE

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load trnascan-se

Example job
~~~~~
To run Trnascan-se on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=trnascan-se
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers trnascan-se
