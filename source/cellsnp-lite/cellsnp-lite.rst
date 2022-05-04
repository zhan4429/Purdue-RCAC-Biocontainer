.. _backbone-label:

cellSNP
==============================

Introduction
~~~~~~~~
``cellSNP`` aims to pileup the expressed alleles in single-cell or bulk RNA-seq data, which can be directly used for donor deconvolution in multiplexed single-cell RNA-seq data, particularly with vireo, which assigns cells to donors and detects doublets, even without genotyping reference. For more information, please check its website: https://biocontainers.pro/tools/cellsnp-lite and its home page on `Github`_.

Commands
~~~~~~~
- cellsnp-lite

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load cellsnp-lite

Example job
~~~~~
To run cellSNP on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=cellsnp-lite
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers cellsnp-lite

.. _Github: https://github.com/single-cell-genetics/cellSNP