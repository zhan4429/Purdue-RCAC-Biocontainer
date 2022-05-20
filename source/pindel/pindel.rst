.. _backbone-label:

Pindel
==============================

Introduction
~~~~~~~~
``Pindel`` is used to detect breakpoints of large deletions, medium sized insertions, inversions, tandem duplications and other structural variants at single-based resolution from next-gen sequence data. For more information, please check its website: https://biocontainers.pro/tools/pindel and its home page: http://gmt.genome.wustl.edu/packages/pindel/index.html.

Versions
~~~~~~~~
- 0.2.5b9

Commands
~~~~~~~
- pindel
- pindel2cvf

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load pindel

Example job
~~~~~
To run Pindel on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=pindel
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers pindel
