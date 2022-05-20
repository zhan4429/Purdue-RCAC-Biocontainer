.. _backbone-label:

Nanolyse
==============================

Introduction
~~~~~~~~
``Nanolyse`` is a tool to remove reads mapping to the lambda phage genome from a fastq file. For more information, please check its website: https://biocontainers.pro/tools/nanolyse and its home page on `Github`_.

Versions
~~~~~~~~
- 1.2.0

Commands
~~~~~~~
- NanoLyse

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load nanolyse

Example job
~~~~~
To run Nanolyse on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=nanolyse
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers nanolyse

.. _Github: https://github.com/wdecoster/nanolyse