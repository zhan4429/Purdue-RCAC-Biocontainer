.. _backbone-label:

Htslib
==============================

Introduction
~~~~~~~~
``Htslib`` is a C library for high-throughput sequencing data formats. For more information, please check its website: https://biocontainers.pro/tools/htslib and its home page on `Github`_.

Versions
~~~~~~~~
- 1.14
- 1.15

Commands
~~~~~~~
- bgzip
- htsfile
- tabix

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load htslib

Example job
~~~~~
To run Htslib on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=htslib
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers htslib

.. _Github: https://github.com/samtools/htslib