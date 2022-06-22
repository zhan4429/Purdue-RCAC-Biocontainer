.. _backbone-label:

Spaceranger
==============================

Introduction
~~~~~~~~
``Spaceranger`` is a set of analysis pipelines that process Visium Spatial Gene Expression data with brightfield and fluorescence microscope images. For more information, please check its Docker hub: https://hub.docker.com/r/cumulusprod/spaceranger/tags and its home page: https://support.10xgenomics.com/spatial-gene-expression/software/pipelines/latest/what-is-space-ranger.

Versions
~~~~~~~~
- 1.3.0

Commands
~~~~~~~
- spaceranger

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load spaceranger

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run Spaceranger on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=spaceranger
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers spaceranger
