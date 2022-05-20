.. _backbone-label:

Pybedtools
==============================

Introduction
~~~~~~~~
``Pybedtools`` wraps and extends BEDTools and offers feature-level manipulations from within Python. For more information, please check its website: https://biocontainers.pro/tools/pybedtools and its home page on `Github`_.

Versions
~~~~~~~~
- 0.9.0-py37

Commands
~~~~~~~
- python
- python3

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load pybedtools

Example job
~~~~~
To run Pybedtools on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=pybedtools
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers pybedtools

.. _Github: https://github.com/daler/pybedtools