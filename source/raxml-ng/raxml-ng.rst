.. _backbone-label:

Raxml-ng
==============================

Introduction
~~~~~~~~
``Raxml-ng`` is a phylogenetic tree inference tool which uses maximum-likelihood (ML) optimality criterion. For more information, please check its website: https://biocontainers.pro/tools/raxml-ng and its home page on `Github`_.

Versions
~~~~~~~~
- 1.1.0

Commands
~~~~~~~
- raxml-ng
- raxml-ng-mpi
- mpirun
- mpiexec

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load raxml-ng

Example job
~~~~~
To run Raxml-ng on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=raxml-ng
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers raxml-ng

.. _Github: https://github.com/amkozlov/raxml-ng