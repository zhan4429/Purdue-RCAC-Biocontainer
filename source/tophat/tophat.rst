.. _backbone-label:

TopHat
==============================

Introduction
~~~~~~~~
``TopHat`` is a fast splice junction mapper for RNA-Seq reads. It aligns RNA-Seq reads to mammalian-sized genomes using the ultra high-throughput short read aligner Bowtie, and then analyzes the mapping results to identify splice junctions between exons. For more information, please check its website: https://biocontainers.pro/tools/tophat and its home page: https://ccb.jhu.edu/software/tophat/index.shtml.

Commands
~~~~~~~
- tophat
- tophat2

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load tophat

Example job
~~~~~
To run TopHat on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=tophat
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers tophat
