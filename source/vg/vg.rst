.. _backbone-label:

Vg
==============================

Introduction
~~~~~~~~
Variation graphs (vg) provides tools for working with genome variation graphs.
For more information, please check:
Quay.io: https://quay.io/repository/vgteam/vg?tabinfo 
Home page: https://github.com/vgteam/vg

Versions
~~~~~~~~
- 1.40.0

Commands
~~~~~~~
- vg

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load vg

Example job
~~~~~
To run vg on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=vg
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers vg

