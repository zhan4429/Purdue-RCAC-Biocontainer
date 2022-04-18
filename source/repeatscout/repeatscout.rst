.. _backbone-label:

RepeatScout
==============================

Introduction
~~~~~~~~
``RepeatScout`` is a tool to discover repetitive substrings in DNA. For more information, please check its website: https://biocontainers.pro/tools/repeatscout and its home page on `Github`_.

Commands
~~~~~~~
- RepeatScout
- build_lmer_table
- compare-out-to-gff.prl
- filter-stage-1.prl
- filter-stage-2.prl
- merge-lmer-tables.prl

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load repeatscout

Example job
~~~~~
To run RepeatScout on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=repeatscout
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers repeatscout

.. _Github: https://github.com/mmcco/RepeatScout