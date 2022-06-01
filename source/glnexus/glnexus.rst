.. _backbone-label:

Glnexus
==============================

Introduction
~~~~~~~~
Glnexus: Scalable gVCF merging and joint variant calling for population sequencing projects.
For more information, please check:
BioContainers: https://biocontainers.pro/tools/glnexus 
Home page: https://github.com/dnanexus-rnd/GLnexus

Versions
~~~~~~~~
- 1.4.1

Commands
~~~~~~~
- glnexus_cli

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load glnexus

Example job
~~~~~
To run glnexus on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=glnexus
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers glnexus

