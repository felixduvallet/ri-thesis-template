#! /bin/bash

# Clean up bibtex files by removing these tags: (url issn isbn doi)


arr=`ls *bib`
tags=(url issn isbn doi month)

## loop through files and tags
for file in ${arr[@]}
do
   echo 'Cleaning up file: ' $file
   for tag in ${tags[@]}
   do
       #echo '  Removing tag: '$tag
       cat $file | grep -v $tag > out
       mv out $file
   done

done

