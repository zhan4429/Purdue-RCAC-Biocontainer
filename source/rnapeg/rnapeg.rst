.. _backbone-label:

RNApeg
==============================

Introduction
~~~~~~~~
``RNApeg`` is an RNA junction calling, correction, and quality-control package. RNAIndel supports GRCh38 and 37. For more information, please check its Github package: https://github.com/stjude/RNApeg/pkgs/container/rnapeg and its home page on `Github`_.

Commands
~~~~~~~
- RNApeg.sh

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load rnapeg

Example job
~~~~~
To run RNApeg on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=rnapeg
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers rnapeg

.. _Github: https://github.com/stjude/RNApeg