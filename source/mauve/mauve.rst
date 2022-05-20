.. _backbone-label:

Mauve
==============================

Introduction
~~~~~~~~
``Mauve`` is a system for constructing multiple genome alignments in the presence of large-scale evolutionary events such as rearrangement and inversion. For more information, please check its website: https://biocontainers.pro/tools/mauve and its home page: http://darlinglab.org/mauve/.

Versions
~~~~~~~~
- 2.4.0

Commands
~~~~~~~
- mauveAligner
- progressiveMauve

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load mauve

Example job
~~~~~
To run Mauve on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=mauve
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers mauve
