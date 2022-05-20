.. _backbone-label:

Eggnog-mapper
==============================

Introduction
~~~~~~~~
``Eggnog-mapper`` is a tool for fast functional annotation of novel sequences. For more information, please check its website: https://biocontainers.pro/tools/eggnog-mapper and its home page on `Github`_.

Versions
~~~~~~~~
- 2.1.7

Commands
~~~~~~~
- create_dbs.py
- download_eggnog_data.py
- emapper.py
- hmm_mapper.py
- hmm_server.py
- hmm_worker.py
- vba_extract.py

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load eggnog-mapper

Example job
~~~~~
To run Eggnog-mapper on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=eggnog-mapper
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers eggnog-mapper

.. _Github: https://github.com/eggnogdb/eggnog-mapper