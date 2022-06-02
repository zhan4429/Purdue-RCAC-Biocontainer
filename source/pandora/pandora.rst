.. _backbone-label:

Pandora
==============================

Introduction
~~~~~~~~
Pandora is a tool for bacterial genome analysis using a pangenome reference graph (PanRG). It allows gene presence/absence detection and genotyping of SNPs, indels and longer variants in one or a number of samples.
For more information, please check:
BioContainers: https://biocontainers.pro/tools/pandora 
Home page: https://github.com/rmcolq/pandora

Versions
~~~~~~~~
- 0.9.1

Commands
~~~~~~~
- pandora

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load pandora

Example job
~~~~~
To run pandora on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=pandora
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers pandora
