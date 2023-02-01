#!/bin/bash

directory=0
executable=0
file=0

for f in `ls`
do

if [ -d $f ]
then
let directory+=1
echo $f >> list_directory.txt
elif [ -x $f ]
then
let executable+=1
echo $f >> list_executable.txt
else
let file+=1
echo $f >> list_file.txt
fi

done
echo il y a "$directory" repertoires, "$file" fichiers et "$executable" executables >> findOut.txt
