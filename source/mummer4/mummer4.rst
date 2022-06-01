.. _backbone-label:

Mummer4
==============================

Introduction
~~~~~~~~
``Mummer4`` is a versatile alignment tool for DNA and protein sequences. For more information, please check its website: https://biocontainers.pro/tools/mummer4 and its home page on `Github`_.

Versions
~~~~~~~~
- 4.0.0rc1-pl5262

Commands
~~~~~~~
- annotate
- combineMUMs
- delta-filter
- delta2vcf
- dnadiff
- exact-tandems
- mummer
- mummerplot
- nucmer
- promer
- repeat-match
- show-aligns
- show-coords
- show-diff
- show-snps
- show-tiling

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load mummer4

Example job
~~~~~
To run Mummer4 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=mummer4
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers mummer4

.. _Github: https://github.com/mummer4/mummer