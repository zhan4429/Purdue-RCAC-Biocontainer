.. _backbone-label:

easySFS
==============================

Introduction
~~~~~~~~
``easySFS`` is a tool for the effective selection of population size projection for construction of the site frequency spectrum. For more information, please check its home page on `Github`_.

Commands
~~~~~~~
- easySFS.py

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load easysfs

Example job
~~~~~
To run easySFS on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=easysfs
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers easysfs

.. _Github: https://github.com/isaacovercast/easySFS