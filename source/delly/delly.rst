.. _backbone-label:

Delly
==============================

Introduction
~~~~~~~~
``Delly`` is an integrated structural variant (SV) prediction method that can discover, genotype and visualize deletions, tandem duplications, inversions and translocations at single-nucleotide resolution in short-read massively parallel sequencing data. For more information, please check its website: https://biocontainers.pro/tools/delly and its home page on `Github`_.

Commands
~~~~~~~
- delly

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load delly

Example job
~~~~~
To run Delly on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=delly
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers delly

.. _Github: https://github.com/dellytools/delly