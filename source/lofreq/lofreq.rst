.. _backbone-label:

Lofreq
==============================

Introduction
~~~~~~~~
``Lofreq`` is a fast and sensitive variant-caller for inferring SNVs and indels from next-generation sequencing data. For more information, please check its website: https://biocontainers.pro/tools/lofreq and its home page on `Github`_.

Commands
~~~~~~~
- lofreq

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load lofreq

Example job
~~~~~
To run Lofreq on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=lofreq
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers lofreq

.. _Github: https://csb5.github.io/lofreq/