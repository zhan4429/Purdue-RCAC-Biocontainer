.. _backbone-label:

Phd2fasta
==============================

Introduction
~~~~~~~~
``Phd2fasta`` is a tool to convert Phred ‘phd’ format files to ‘fasta’ format. For more information, please check its home page: http://www.phrap.org/phredphrapconsed.html.

Commands
~~~~~~~
- phd2fasta

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load phd2fasta

Example job
~~~~~
To run Phd2fasta on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=phd2fasta
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers phd2fasta
