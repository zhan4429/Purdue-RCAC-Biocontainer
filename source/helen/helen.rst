.. _backbone-label:

Helen
==============================

Introduction
~~~~~~~~
HELEN is a multi-task RNN polisher which operates on images produced by MarginPolish.
For more information, please check:
Docker hub: https://hub.docker.com/r/kishwars/helen 
Home page: https://github.com/kishwarshafin/helen

Versions
~~~~~~~~
- 1.0

Commands
~~~~~~~
- helen

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load helen

Example job
~~~~~
To run helen on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=helen
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers helen

