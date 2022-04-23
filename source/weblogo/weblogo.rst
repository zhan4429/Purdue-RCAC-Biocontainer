.. _backbone-label:

Weblogo
==============================

Introduction
~~~~~~~~
``Weblogo`` is a web based application designed to make the generation of sequence logos as easy and painless as possible. For more information, please check its website: https://biocontainers.pro/tools/weblogo and its home page: http://weblogo.threeplusone.com.

Commands
~~~~~~~
- weblogo

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load weblogo

Example job
~~~~~
To run Weblogo on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=weblogo
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers weblogo
