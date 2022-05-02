.. _backbone-label:

Circlator
==============================

Introduction
~~~~~~~~
``Circlator`` is a tool to circularize genome assemblies. For more information, please check its Docker hub: https://hub.docker.com/r/sangerpathogens/circlator and its home page on `Github`_.

Commands
~~~~~~~
- circlator
- python3

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load circlator

Example job
~~~~~
To run Circlator on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=circlator
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers circlator

    circlator minimus2  minimus2_test_run_minimus2.in.fa  minimus2_test
.. _Github: https://github.com/sanger-pathogens/circlator

