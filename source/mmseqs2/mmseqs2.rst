.. _backbone-label:

Mmseqs2
==============================

Introduction
~~~~~~~~
``Mmseqs2`` is a software suite to search and cluster huge protein and nucleotide sequence sets. For more information, please check its website: https://biocontainers.pro/tools/mmseqs2 and its home page on `Github`_.

Versions
~~~~~~~~
- 13.45111

Commands
~~~~~~~
- mmseqs

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load mmseqs2

Example job
~~~~~
To run Mmseqs2 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=mmseqs2
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers mmseqs2

.. _Github: https://github.com/soedinglab/MMseqs2