.. _backbone-label:

Nextclade
==============================

Introduction
~~~~~~~~
``Nextclade`` is a tool that identifies differences between your sequences and a reference sequence, uses these differences to assign your sequences to clades, and reports potential sequence quality issues in your data. For more information, please check its Docker hub: https://hub.docker.com/r/nextstrain/nextclade and its home page: https://docs.nextstrain.org/projects/nextclade/en/stable/user/nextclade-cli.html.

Commands
~~~~~~~
- nextclade

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load nextclade

Example job
~~~~~
To run Nextclade on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=nextclade
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers nextclade
