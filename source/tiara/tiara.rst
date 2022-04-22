.. _backbone-label:

Tiara
==============================

Introduction
~~~~~~~~
``Tiara`` is a deep-learning-based approach for identification of eukaryotic sequences in the metagenomic data powered by PyTorch. For more information, please check its Docker hub: https://hub.docker.com/r/zhan4429/tiara and its home page on `Github`_.

Commands
~~~~~~~
- tiara

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load tiara

Example job
~~~~~
To run Tiara on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=tiara
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers tiara

.. _Github: https://github.com/ibe-uw/tiara