.. _backbone-label:

Ngs-bits
==============================

Introduction
~~~~~~~~
``Ngs-bits`` - Short-read sequencing tools. For more information, please check its website: https://biocontainers.pro/tools/ngs-bits and its home page on `Github`_.

Commands
~~~~~~~
- SampleAncestry
- SampleDiff
- SampleGender
- SampleOverview
- SampleSimilarity
- SeqPurge
- CnvHunter
- RohHunter
- UpdHunter
- CfDnaQC
- MappingQC
- NGSDImportQC
- ReadQC
- SomaticQC
- VariantQC
- TrioMaternalContamination
- BamCleanHaloplex
- BamClipOverlap
- BamDownsample
- BamFilter
- BamToFastq
- BedAdd
- BedAnnotateFreq
- BedAnnotateFromBed
- BedAnnotateGC
- BedAnnotateGenes
- BedChunk
- BedCoverage
- BedExtend
- BedGeneOverlap
- BedHighCoverage
- BedInfo
- BedIntersect
- BedLiftOver
- BedLowCoverage
- BedMerge
- BedReadCount
- BedShrink
- BedSort
- BedSubtract
- BedToFasta
- BedpeAnnotateBreakpointDensity
- BedpeAnnotateCnvOverlap
- BedpeAnnotateCounts
- BedpeAnnotateFromBed
- BedpeFilter
- BedpeGeneAnnotation
- BedpeSort
- BedpeToBed
- FastqAddBarcode
- FastqConcat
- FastqConvert
- FastqDownsample
- FastqExtract
- FastqExtractBarcode
- FastqExtractUMI
- FastqFormat
- FastqList
- FastqMidParser
- FastqToFasta
- FastqTrim
- VcfAnnotateFromBed
- VcfAnnotateFromBigWig
- VcfAnnotateFromVcf
- VcfBreakMulti
- VcfCalculatePRS
- VcfCheck
- VcfExtractSamples
- VcfFilter
- VcfLeftNormalize
- VcfSort
- VcfStreamSort
- VcfToBedpe
- VcfToTsv
- SvFilterAnnotations
- NGSDExportGenes
- GenePrioritization
- GenesToApproved
- GenesToBed
- GraphStringDb
- PhenotypeSubtree
- PhenotypesToGenes
- PERsim
- FastaInfo

Module
~~~~~~~~
You can load the modules by::
    
    module load biocontainers
    module load ngs-bits

Example job
~~~~~
To run Ngs-bits on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name 
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=ngs-bits
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers ngs-bits

.. _Github: https://github.com/imgag/ngs-bits