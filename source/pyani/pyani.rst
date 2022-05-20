.. _backbone-label:

Pyani
==============================

Introduction
~~~~~~~~
``Pyani`` is an application and Python module for whole-genome classification of microbes using Average Nucleotide Identity. For more information, please check its website: https://biocontainers.pro/tools/pyani and its home page on `Github`_.

Versions
~~~~~~~~
- 0.2.11

Commands
~~~~~~~
- average_nucleotide_identity.py
- genbank_get_genomes_by_taxon.py
- delta_filter_wrapper.py

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load pyani

Example job
~~~~~
To run Pyani on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=pyani
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers pyani

.. _Github: http://widdowquinn.github.io/pyani/