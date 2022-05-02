.. _backbone-label:

How_are_we_stranded_here
==============================

Introduction
~~~~~~~~
``How_are_we_stranded_here`` is a python package for testing strandedness of RNA-Seq fastq files. For more information, please check its website: https://biocontainers.pro/tools/how_are_we_stranded_here and its home page on `Github`_.

Commands
~~~~~~~
- check_strandedness

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load how_are_we_stranded_here

Example job
~~~~~
To run How_are_we_stranded_here on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=how_are_we_stranded_here
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers how_are_we_stranded_here

.. _Github: https://github.com/betsig/how_are_we_stranded_here