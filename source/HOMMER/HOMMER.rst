.. _backbone-label:  
HOMMER
============================== 
``HOMMER`` (Hypergeometric Optimization of Motif EnRichment) is a suite of tools for Motif Discovery and next-gen sequencing analysis. Details about its usage can be found in `HOMMER website`_.  


Selected database have been downloaded for users.   

- ``ORGANISMS``: yeast, worm, mouse, arabidopsis, zebrafish, rat, human and fly   
- ``PROMOTERS``: yeast, worm, mouse, arabidopsis, zebrafish, rat, human and fly      
- ``GENOMES``: hg19, hg38, mm10, ce11, dm6, rn6, danRer11, tair10, and sacCer3  


Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load hommer/4.11
    
    
Example job
~~~~~~~~
To run HOMMER on our cluster::

    #!/bin/bash
    #SBATCH -A myallocation	# Allocation name 
    #SBATCH -t 10:00:00
    #SBATCH -N 1
    #SBATCH -n 24
    #SBATCH --job-name=hommer
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --mail-user=UserID@purdue.edu
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers hommer/4.11
    
    configureHomer.pl -list   ## Check the installed database. 
    findMotifs.pl mouse_geneid.txt mouse motif_out_mouse
    findMotifs.pl geneid.txt human motif_out
    
    
.. _HOMMER website: http://homer.ucsd.edu/homer/index.html. 
