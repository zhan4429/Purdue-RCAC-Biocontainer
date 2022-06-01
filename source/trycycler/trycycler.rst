.. _backbone-label:

Trycycler
==============================

Introduction
~~~~~~~~
Trycycler is a tool for generating consensus long-read assemblies for bacterial genomes. I.e. if you have multiple long-read assemblies for the same isolate, Trycycler can combine them into a single assembly that is better than any of your inputs.
For more information, please check:
Docker hub: https://hub.docker.com/r/staphb/trycycler 
Home page: https://github.com/rrwick/Trycycler

Versions
~~~~~~~~
- 0.5.0

Commands
~~~~~~~
- trycycler

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load trycycler

Example job
~~~~~
To run trycycler on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=trycycler
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers trycycler

