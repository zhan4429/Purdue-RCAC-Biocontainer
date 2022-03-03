.. _backbone-label:

Alphafold
==============================

`Alphafold` is a protein structure prediction tool developed by DeepMind (Google). It uses a novel machine learning approach to predict 3D protein structures from primary sequences alone. It has been deployed in all RCAC clusters, supporting both CPU and GPU.   

It also relies on a huge database. The full database (~2.2TB) has been downloaded and setup for users.  

You can load the modules by::
    module load biocontainers
    module load alphafold/2.1.1

Usage::
   run_alphafold.sh --flagfile=$AlphaDB --fasta_paths=XX --output_dir=XX ...

$AlphaDB (/depot/itap/datasets/alphafold/full_db.ff) is a configuration file passed to AlphaFold containing the location of the database. Typically it should not be edited. Users can add other parameters based on your needs.  

