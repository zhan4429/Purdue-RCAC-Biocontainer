#! /bin/bash

# This script checks all the lua files in the biocontainers folder to see if the local uri exists and if it does, if the local image is correctly built from it
# Example Usage: ./luaimagecheckersh
# Differences are stored in outputfile as seen below
outputfile="luadifferences.txt"

sourcefolder="/opt/spack/modulefiles/biocontainers/"
containernamesarray=`ls $sourcefolder`

echo "Missing Local Uri" > tempfile.rst
echo "" >> tempfile.rst
echo "" >> tempfile.rst

echo "Local image not equal to converted uri" > tempfile2.rst
echo "" >> tempfile2.rst
echo "" >> tempfile2.rst

for containername in $containernamesarray
do
    inputfolder="/opt/spack/modulefiles/biocontainers/$containername/"
    
    filenamesarray=`ls $inputfolder*.lua`
    for eachfile in $filenamesarray
    do
        inputpath=$eachfile # This assumes last file name in alphabetical order is the file to parse
    done


    localimage=$(grep ^'local image' $inputpath | awk '{$1=""; print $0}')
    localimage=`echo "$localimage" | cut -d'"' -f 2`

    localuri=$(grep ^'local uri' $inputpath | awk '{$1=""; print $0}')
    localuri=`echo "$localuri" | cut -d'"' -f 2`

    if [ ${#localuri} -le 1 ]; 
    then
        # Missing Uri File
        inputpath=${inputpath:37}
        echo "File name: $inputpath" >> tempfile.rst
        echo "Local image: $localimage" >> tempfile.rst
        echo "" >> tempfile.rst
    else
        # Not missing Uri File
        modifieduri=${localuri:9} # Removing first 9 characters (docker://)
        modifieduri+=".sif" # adding .sif to end of string
        image2=$(echo "$modifieduri" | tr '/' '_') # Replaceing all / with _

        if [ "$image2" != "$localimage" ]; then
        # local image is not equal to converted uri
            inputpath=${inputpath:37}
            echo "File name: $inputpath" >> tempfile2.rst
            echo "Local image: $localimage" >> tempfile2.rst
            echo "Local uri: $localuri" >> tempfile2.rst
            echo "" >> tempfile2.rst
        fi
        
    fi

done

echo "" >> tempfile.rst
echo "" >> tempfile.rst
echo "" >> tempfile.rst

cat tempfile.rst > $outputfile
cat tempfile2.rst >> $outputfile

rm tempfile.rst
rm tempfile2.rst