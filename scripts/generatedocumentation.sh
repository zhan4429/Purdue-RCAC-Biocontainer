#! /bin/bash

# This script generates documentation file based on the name of biocontainer entered 
# Example Usage: ./generatedocumenation.sh name
# Warning: Will not work unless name exactly matches with biocontainer name
# Verify input and output paths before running

if [ $# -eq 1 ]
then 
   inputfolder="/opt/spack/modulefiles/biocontainers/$1/"
   echo "input folder: "$inputfolder

   filenamesarray=`ls $inputfolder*.lua`
   for eachfile in $filenamesarray
   do
      inputpath=$eachfile #This assumes last file name in alphabetical order is the file to parse
   done
   echo "input path: "$inputpath

   containername=$(echo $inputpath | awk -F/ '{print $6}')

   outputfile="/home/$USER/biocontainer_doc/source/$containername/$containername.rst"
   echo "output file: "$outputfile

   inputpathcontent=$(<$inputpath)  

   echo ".. _backbone-label:" > $outputfile
   echo "" >> $outputfile
   echo "${containername^}" >> $outputfile
   echo "==============================" >> $outputfile
   echo "" >> $outputfile
   echo "Introduction" >> $outputfile
   echo "~~~~~~~~" >> $outputfile
   description=$(echo $inputpathcontent | sed -e 's/Description/\nDescription\n/' -e 's/More information/\nMore information\n/' | sed -n '/Description/,/More information/{//!p}')
   description=$(echo $description | sed 's/=//g')
   echo $description >> $outputfile
   echo "For more information, please check:" >> $outputfile
   moreinformation=$(echo $inputpathcontent | sed -e 's/More information/\nMore information\n/' -e 's/]==])/\n]==])\n/' | sed -n '/More information/,/]==])/{//!p}')
   moreinformation=$(echo $moreinformation | sed 's/=//g')
   moreinformation=$(echo $moreinformation | sed 's/-//')
   echo $moreinformation | sed 's/- /\n/g' >> $outputfile
   echo "" >> $outputfile
   echo "Versions" >> $outputfile
   echo "~~~~~~~~" >> $outputfile
   for eachfile in $filenamesarray
   do
      echo -n "- " >> $outputfile
      eachfile=${eachfile::-4}
      echo "$eachfile" | sed 's:.*/::' >> $outputfile
   done
   echo "" >> $outputfile
   echo "Commands" >> $outputfile
   echo "~~~~~~~" >> $outputfile
   localprograms=$(echo "$inputpathcontent" | sed -n '/local programs/,/local/p')
   localprograms=$(echo $localprograms | grep -oP '\{\K[^\}]+')
   IFS=', ' read -r -a array <<< "$localprograms"
   for element in "${array[@]}"
   do
      echo -n "- " >> $outputfile
      echo "$element" | cut -d'"' -f 2 >> $outputfile
   done
   echo "" >> $outputfile
   echo "Module" >> $outputfile
   echo "~~~~~~~~" >> $outputfile
   echo "You can load the modules by::" >> $outputfile
   echo "" >> $outputfile
   echo "    module load biocontainers" >> $outputfile
   echo "    module load $containername" >> $outputfile
   echo "" >> $outputfile
   echo "Example job" >> $outputfile
   echo "~~~~~" >> $outputfile
   echo "To run $containername on our clusters::" >> $outputfile
   echo "" >> $outputfile
   echo -e "    #!/bin/bash\n    #SBATCH -A myallocation     # Allocation name\n    #SBATCH -t 1:00:00\n    #SBATCH -N 1\n    #SBATCH -n 1\n    #SBATCH --job-name=$containername\n    #SBATCH --mail-type=FAIL,BEGIN,END\n    #SBATCH --error=%x-%J-%u.err\n    #SBATCH --output=%x-%J-%u.out" >> $outputfile
   echo "" >> $outputfile
   echo "    module --force purge" >> $outputfile
   echo "    ml biocontainers $containername" >> $outputfile
   echo "" >> $outputfile
fi