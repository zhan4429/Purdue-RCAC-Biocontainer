#! /bin/bash

# This script adds versions to the documentations of the biocontainers whose names are entered as arguemnts when running the script
# Example Usage: ./appendversions.sh dbg2olc deepbgc deepsignal2
# Warning: Will not work unless name is exact match with both biocontainer and .rst documentation file 

if [ $# -gt 0 ]
then
    for x; do
        containername=$x

        inputfolder="/opt/spack/modulefiles/biocontainers/$containername/"
        echo "input folder: "$inputfolder

        outputfile="/home/$USER/svn/biocontainer_doc/source/$containername/$containername.rst"
        echo "output file: "$outputfile

        echo "Versions" > tempfile.rst
        echo "~~~~~~~~" >> tempfile.rst
        filenamesarray=`ls $inputfolder*.lua`
        for eachfile in $filenamesarray
        do
            echo -n "- " >> tempfile.rst
            eachfile=${eachfile::-4}
            echo "$eachfile" | sed 's:.*/::' >> tempfile.rst
        done
        echo "" >> tempfile.rst

        sed -i $'/Command/{e cat     tempfile.rst\n}' $outputfile

        rm tempfile.rst
    done
    
fi
