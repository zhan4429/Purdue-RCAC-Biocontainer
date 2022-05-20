.. _backbone-label:

IGV
==============================

Introduction
~~~~~~~~
``IGV`` (Integrative Genomics Viewer) is a high-performance, easy-to-use, interactive tool for the visual exploration of genomic data. For more information, please check its home page: http://www.broadinstitute.org/software/igv/home.

Versions
~~~~~~~~
- 2.11.9
- 2.12.3

Commands
~~~~~~~
- igv_hidpi.sh
- igv.sh

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load igv

Example job
~~~~~
To run IGV on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=igv
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers igv
