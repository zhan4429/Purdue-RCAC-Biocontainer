.. _backbone-label:

Minimap2
==============================

Introduction
~~~~~~~~
``Minimap2`` is a versatile pairwise aligner for genomic and spliced nucleotide sequences. For more information, please check its website: https://biocontainers.pro/tools/minimap2 and its home page on `Github`_.

Commands
~~~~~~~
- minimap2
- paftools.js
- k8

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load minimap2

Example job
~~~~~
To run Minimap2 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=minimap2
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers minimap2

.. _Github: https://github.com/lh3/minimap2