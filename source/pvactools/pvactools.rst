.. _backbone-label:

Pvactools
==============================

Introduction
~~~~~~~~
pVACtools is a cancer immunotherapy tools suite consisting of pVACseq, pVACbind, pVACfuse, pVACvector, and pVACview.
For more information, please check:
Docker hub: https://hub.docker.com/r/griffithlab/pvactools/ 
Home page: https://pvactools.readthedocs.io/en/latest/

Versions
~~~~~~~~
- 3.0.1

Commands
~~~~~~~
- pvacbind
- pvacfuse
- pvacseq
- pvactools
- pvacvector
- pvacview

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load pvactools

Example job
~~~~~
To run pvactools on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=pvactools
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers pvactools
