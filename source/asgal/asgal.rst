.. _backbone-label:

ASGAL
==============================

Introduction
~~~~~~~~
``ASGAL`` (Alternative Splicing Graph ALigner) is a tool for detecting the alternative splicing events expressed in a RNA-Seq sample with respect to a gene annotation. For more information, please check its Docker hub: https://hub.docker.com/r/algolab/asgal and its home page on `Github`_.

Commands
~~~~~~~
- asgal

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load asgal

Example job
~~~~~
To run ASGAL on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=asgal
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers asgal

.. _Github: https://github.com/AlgoLab/galig