.. _backbone-label:

Meme
==============================

Introduction
~~~~~~~~
``Meme`` is a collection of tools for the discovery and analysis of sequence motifs. For more information, please check its website: https://biocontainers.pro/tools/meme and its home page: https://meme-suite.org/meme/.

Commands
~~~~~~~
- ame
- centrimo
- dreme
- dust
- fimo
- glam2
- glam2scan
- gomo
- mast
- mcast
- meme
- meme-chip
- momo
- purge
- spamo
- tomtom

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load meme

Example job
~~~~~
To run Meme on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=meme
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers meme
