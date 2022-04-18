.. _backbone-label:

Mashmap
==============================

Introduction
~~~~~~~~
``Mashmap`` is a fast approximate aligner for long DNA sequences. For more information, please check its website: https://biocontainers.pro/tools/mashmap and its home page on `Github`_.

Commands
~~~~~~~
- mashmap

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load mashmap

Example job
~~~~~
To run Mashmap on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=mashmap
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers mashmap

.. _Github: https://github.com/marbl/MashMap