.. _backbone-label:

RNAIndel
==============================

Introduction
~~~~~~~~
``RNAIndel`` calls coding indels from tumor RNA-Seq data and classifies them as somatic, germline, and artifactual. RNAIndel supports GRCh38 and 37. For more information, please check its Github package: https://github.com/stjude/RNAIndel/pkgs/container/rnaindel and its home page on `Github`_.

Versions
~~~~~~~~
- 3.0.9

Commands
~~~~~~~
- rnaindel

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load rnaindel

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run RNAIndel on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=rnaindel
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers rnaindel

.. _Github: https://github.com/stjude/RNAIndel
