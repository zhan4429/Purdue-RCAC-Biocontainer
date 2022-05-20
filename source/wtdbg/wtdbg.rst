.. _backbone-label:

Wtdbg2
==============================

Introduction
~~~~~~~~
``Wtdbg2`` is a de novo sequence assembler for long noisy reads produced by PacBio or Oxford Nanopore Technologies (ONT). For more information, please check its website: https://biocontainers.pro/tools/wtdbg and its home page on `Github`_.

Versions
~~~~~~~~
- 2.5

Commands
~~~~~~~
- wtdbg-cns
- wtdbg2
- wtpoa-cns

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load wtdbg

Example job
~~~~~
To run Wtdbg2 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=wtdbg
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers wtdbg

.. _Github: https://github.com/ruanjue/wtdbg2