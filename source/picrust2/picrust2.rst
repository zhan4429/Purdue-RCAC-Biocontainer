.. _backbone-label:

Picrust2
==============================

Introduction
~~~~~~~~
``Picrust2`` is a software for predicting functional abundances based only on marker gene sequences. For more information, please check its website: https://biocontainers.pro/tools/picrust2 and its home page on `Github`_.

Versions
~~~~~~~~
- 2.4.2
- 2.5.0

Commands
~~~~~~~
- add_descriptions.py
- convert_table.py
- hsp.py
- metagenome_pipeline.py
- pathway_pipeline.py
- picrust2_pipeline.py
- place_seqs.py
- print_picrust2_config.py
- run_abundance.py
- run_sepp.py
- run_tipp.py
- run_tipp_tool.py
- run_upp.py
- shuffle_predictions.py
- split_sequences.py
- sumlabels.py
- sumtrees.py

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load picrust2

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run Picrust2 on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=picrust2
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers picrust2

.. _Github: https://github.com/picrust/picrust2