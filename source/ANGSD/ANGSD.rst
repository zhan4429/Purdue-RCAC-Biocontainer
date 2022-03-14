.. _backbone-label:  

ANGSD
============================== 

Introduction
~~~~~~~
``ANGSD`` is a software for analyzing next generation sequencing data. Detailed usage can be found here: http://www.popgen.dk/angsd/index.php/ANGSD. 


Commands
~~~~~~
- angsd
- realSFS
- msToGlf
- thetaStat
- supersim

Module
~~~~~~~
You can load the modules by::

    module load biocontainers
    module load angsd/0.937

Example job
~~~~~~
To run GTDB-Tk our our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 20:00:00
    #SBATCH -N 1
    #SBATCH -n 24
    #SBATCH --job-name=angsd
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers angsd/0.937
    
    angsd -b bam.filelist -GL 1 -doMajorMinor 1 -doMaf 2 -P 5 -minMapQ 30 -minQ 20 -minMaf 0.05










.. _R202: https://gtdb.ecogenomic.org 
