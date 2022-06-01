.. _backbone-label:

Snp-sites
==============================

Introduction
~~~~~~~~
SNP-sites is a tool that apidly extracts SNPs from a multi-FASTA alignment.
For more information, please check:
Docker hub: https://hub.docker.com/r/staphb/snp-sites 
Home page: https://github.com/sanger-pathogens/snp-sites

Versions
~~~~~~~~
- 2.5.1

Commands
~~~~~~~
- snp-sites

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load snp-sites

Example job
~~~~~
To run snp-sites on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=snp-sites
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers snp-sites

