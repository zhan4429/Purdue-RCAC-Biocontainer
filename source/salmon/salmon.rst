.. _backbone-label:  

Salmon
============================== 

Introduction
~~~~~~~
``Salmon`` is a wicked-fast program to produce a highly-accurate, transcript-level quantification estimates from RNA-seq data. 

Detailed usage can be found here: https://github.com/COMBINE-lab/salmon


Commands
~~~~~~
- salmon index 
- salmon quant
- salmon alevin
- salmon swim
- salmon quantmerge

Module
~~~~~~~
You can load the modules by::

    module load biocontainers
    module load salmon

Example job
~~~~~~
To run Salmon on our our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 10:00:00
    #SBATCH -N 1
    #SBATCH -n 24
    #SBATCH --job-name=salmon
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers salmon
    
    salmon index -t  Homo_sapiens.GRCh38.cds.all.fa -i salmon_index
    salmon quant -i salmon_index -l A -p 24 -1 SRR16956239_1.fastq -2 SRR16956239_2.fastq --validateMappings -o transcripts_quan
