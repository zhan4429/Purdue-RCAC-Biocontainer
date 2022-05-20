.. _backbone-label:

Taxonkit
==============================

Introduction
~~~~~~~~
``Taxonkit`` is a practical and efficient NCBI taxonomy toolkit. For more information, please check its website: https://biocontainers.pro/tools/taxonkit and its home page on `Github`_.

Versions
~~~~~~~~
- 0.9.0

Commands
~~~~~~~
- taxonkit

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load taxonkit

Example job
~~~~~
To run Taxonkit on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=taxonkit
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers taxonkit

.. _Github: https://github.com/shenwei356/taxonkit