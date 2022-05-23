#! /bin/bash

biocontainers="/opt/spack/modulefiles/biocontainers/"
gitfolders="../source/"

diff -q $gitfolders $biocontainers | grep "Only in" > tempfile.txt

awk 'NF{ print $NF }' tempfile.txt > listofmissingfiles.txt

rm tempfile.txt