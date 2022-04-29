.. _backbone-label:

Raven-assembler
==============================

Introduction
~~~~~~~~
``Raven-assembler`` is a de novo genome assembler for long uncorrected reads. For more information, please check its website: https://biocontainers.pro/tools/raven-assembler and its home page on `Github`_.

Commands
~~~~~~~
- raven

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load raven-assembler

Example job
~~~~~
To run Raven-assembler on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=raven-assembler
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers raven-assembler

.. _Github: https://github.com/lbcb-sci/raven