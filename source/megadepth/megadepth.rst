.. _backbone-label:

Megadepth
==============================

Introduction
~~~~~~~~
``Megadepth`` is an efficient tool for extracting coverage related information from RNA and DNA-seq BAM and BigWig files. For more information, please check its website: https://biocontainers.pro/tools/megadepth and its home page on `Github`_.

Versions
~~~~~~~~
- 1.2.0

Commands
~~~~~~~
- megadepth

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load megadepth

Example job
~~~~~
To run Megadepth on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=megadepth
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers megadepth

.. _Github: https://github.com/ChristopherWilks/megadepth