.. _backbone-label:

Reciprocal Smallest Distance
==============================

Introduction
~~~~~~~~
The ``reciprocal smallest distance`` (RSD) algorithm accurately infers orthologs between pairs of genomes by considering global sequence alignment and maximum likelihood evolutionary distance between sequences. For more information, please check its home page on `Github`_.

Versions
~~~~~~~~
- 1.1.7

Commands
~~~~~~~
- rsd_search
- rsd_blast
- rsd_format

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load reciprocal_smallest_distance

Example job
~~~~~
To run Reciprocal Smallest Distance on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=reciprocal_smallest_distance
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers reciprocal_smallest_distance

.. _Github:  https://github.com/todddeluca/reciprocal_smallest_distance