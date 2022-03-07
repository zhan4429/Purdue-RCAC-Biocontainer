.. _backbone-label:

Alphafold
==============================

Introduction
~~~~~~~~

``Alphafold`` is a protein structure prediction tool developed by DeepMind (Google). It uses a novel machine learning approach to predict 3D protein structures from primary sequences alone. The source code is available on `Github`_. It has been deployed in all RCAC clusters, supporting both CPU and GPU.   

It also relies on a huge database. The full database (~2.2TB) has been downloaded and setup for users.  


Commands
~~~~~~~
run_alphafold.sh

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load alphafold/2.1.1

Usage
~~~~~~~~
The usage of Alphafold on our cluster is very straightford::

   run_alphafold.sh --flagfile=$AlphaDB --fasta_paths=XX --output_dir=XX ...

``$AlphaDB`` (/depot/itap/datasets/alphafold/full_db.ff) is a configuration file passed to AlphaFold containing the location of the database. Typically it should not be edited. Users can add other parameters based on your needs.  

Users can check its detaied user guide in its `Github`_. 

Example job using CPU
~~~~~~~~
To run alphafold using CPU::
    
    #!/bin/bash
    #SBATCH -A myallocation	# Allocation name 
    #SBATCH -t 20:00:00
    #SBATCH -N 1
    #SBATCH -n 24
    #SBATCH --job-name=alphafold
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --mail-user=UserID@purdue.edu
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers alphafold/2.1.1
    
    run_alphafold.sh  --flagfile=$AlphaDB --fasta_paths=/scratch/bell/zhan4429/Containers4/alphafold/sample.fasta --max_template_date=2022-02-01 \
    --output_dir=/scratch/bell/zhan4429/Containers4/alphafold/af2_full --model_preset=monomer

Example job using GPU
~~~~~~~~
To run alphafold using GPU::
    
    #!/bin/bash
    #SBATCH -A myallocation	# Allocation name 
    #SBATCH -t 20:00:00
    #SBATCH -N 1
    #SBATCH -n 24
    #SBATCH --gres=gpu:1
    #SBATCH --job-name=alphafold
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --mail-user=UserID@purdue.edu
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers alphafold/2.1.1
    
    run_alphafold.sh  --flagfile=$AlphaDB --fasta_paths=/scratch/bell/zhan4429/Containers4/alphafold/sample.fasta --max_template_date=2022-02-01 \
    --output_dir=/scratch/bell/zhan4429/Containers4/alphafold/af2_full --model_preset=monomer


.. _Github: https://github.com/deepmind/alphafold/
