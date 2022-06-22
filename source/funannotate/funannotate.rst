.. _backbone-label:

Funannotate
==============================

Introduction
~~~~~~~~
``Funannotate`` is a genome prediction, annotation, and comparison software package. For more information, please check its Docker hub: https://hub.docker.com/r/nextgenusfs/funannotate and its home page on `Github`_.

Versions
~~~~~~~~
- 1.8.10

Commands
~~~~~~~
- funannotate

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load funannotate

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run Funannotate on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=funannotate
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers funannotate

.. _Github: https://github.com/nextgenusfs/funannotate