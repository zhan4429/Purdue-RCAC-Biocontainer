.. _backbone-label:

Proteinortho
==============================

Introduction
~~~~~~~~
``Proteinortho`` is a tool to detect orthologous genes within different species. For more information, please check its website: https://biocontainers.pro/tools/proteinortho and its home page on `Gitlab`_.

Versions
~~~~~~~~
- 6.0.33

Commands
~~~~~~~
- proteinortho
- proteinortho2html.pl
- proteinortho2tree.pl
- proteinortho2xml.pl
- proteinortho6.pl
- proteinortho_cleanupblastgraph
- proteinortho_clustering
- proteinortho_compareProteinorthoGraphs.pl
- proteinortho_do_mcl.pl
- proteinortho_extract_from_graph.pl
- proteinortho_ffadj_mcs.py
- proteinortho_formatUsearch.pl
- proteinortho_grab_proteins.pl
- proteinortho_graphMinusRemovegraph
- proteinortho_history.pl
- proteinortho_singletons.pl
- proteinortho_summary.pl
- proteinortho_treeBuilderCore

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load proteinortho

Example job
~~~~~
To run Proteinortho on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=proteinortho
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers proteinortho

.. _Gitlab: https://gitlab.com/paulklemm_PHD/proteinortho