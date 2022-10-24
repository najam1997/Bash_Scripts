#!/bin/bash

#tar -czf /tmp/myDocs_directory.tar.gz /home/kali/Documents
read -p "Enter the name of the file: " fname
read -p "Enter the name of the directory: " fdirectory
test -d $HOME/$fdirectory || mkdir -m 777 $HOME/$fdirectory 
cp $fname $HOME/$fdirectory
exit 0
