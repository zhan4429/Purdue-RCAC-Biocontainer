.. _backbone-label:

HISAT2
==============================

Introduction
~~~~~~~~
``HISAT2`` is a fast and sensitive alignment program for mapping next-generation sequencing reads (both DNA and RNA) to a population of human genomes as well as to a single reference genome. For more information, please check its website: https://biocontainers.pro/tools/hisat2 and its home page on `Github`_.

Versions
~~~~~~~~
- 2.2.1

Commands
~~~~~~~
- extract_exons.py
- extract_splice_sites.py
- hisat2
- hisat2-align-l
- hisat2-align-s
- hisat2-build
- hisat2-build-l
- hisat2-build-s
- hisat2-inspect
- hisat2-inspect-l
- hisat2-inspect-s
- hisat2_extract_exons.py
- hisat2_extract_snps_haplotypes_UCSC.py
- hisat2_extract_snps_haplotypes_VCF.py
- hisat2_extract_splice_sites.py
- hisat2_read_statistics.py
- hisat2_simulate_reads.py

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load hisat2

Example job
~~~~~
To run HISAT2 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=hisat2
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers hisat2

.. _Github: https://github.com/hahnlab/hisat2