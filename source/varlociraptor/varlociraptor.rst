.. _backbone-label:

Varlociraptor
==============================

Introduction
~~~~~~~~
``Varlociraptor`` implements a novel, unified fully uncertainty-aware approach to genomic variant calling in arbitrary scenarios. For more information, please check its website: https://biocontainers.pro/tools/varlociraptor and its home page on `Github`_.

Versions
~~~~~~~~
- 4.11.4

Commands
~~~~~~~
- varlociraptor

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load varlociraptor

Example job
~~~~~
To run Varlociraptor on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=varlociraptor
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers varlociraptor

.. _Github: https://github.com/varlociraptor/varlociraptor