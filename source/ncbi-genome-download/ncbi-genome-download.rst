.. _backbone-label:

Ncbi-genome-download
==============================

Introduction
~~~~~~~~
``Ncbi-genome-download`` is a script to download genomes from the NCBI FTP servers. For more information, please check its website: https://biocontainers.pro/tools/ncbi-genome-download and its home page on `Github`_.

Commands
~~~~~~~
- ncbi-genome-download

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load ncbi-genome-download

Example job
~~~~~
To run Ncbi-genome-download on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=ncbi-genome-download
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers ncbi-genome-download

.. _Github: https://github.com/kblin/ncbi-genome-download