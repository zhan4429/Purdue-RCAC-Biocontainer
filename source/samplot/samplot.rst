.. _backbone-label:

Samplot
==============================

Introduction
~~~~~~~~
``Samplot`` is a command line tool for rapid, multi-sample structural variant visualization. For more information, please check its website: https://biocontainers.pro/tools/samplot and its home page on `Github`_.

Commands
~~~~~~~
- samplot

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load samplot

Example job
~~~~~
To run Samplot on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=samplot
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers samplot

.. _Github: https://github.com/ryanlayer/samplot