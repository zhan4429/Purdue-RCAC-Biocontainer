.. _backbone-label:

Megahit
==============================

Introduction
~~~~~~~~
``Megahit`` is a ultra-fast single-node solution for large and complex metagenomics assembly via succinct de Bruijn graph. For more information, please check its website: https://biocontainers.pro/tools/megahit and its home page on `Github`_.

Commands
~~~~~~~
- megahit

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load megahit

Example job
~~~~~
To run Megahit on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=megahit
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers megahit

.. _Github: https://github.com/voutcn/megahit