.. _backbone-label:

Signalp6
==============================

Introduction
~~~~~~~~
SignalP predicts the presence and location of signal peptide cleavage sites in amino acid sequences from different organisms: Gram-positive prokaryotes, Gram-negative prokaryotes, and eukaryotes.
For more information, please check:
Home page: https://services.healthtech.dtu.dk/service.php?SignalP

Versions
~~~~~~~~
- 6.0-fast
- 6.0-slow

Commands
~~~~~~~
- signalp6

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load signalp6

Example job
~~~~~
To run signalp6 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=signalp6
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers signalp6

