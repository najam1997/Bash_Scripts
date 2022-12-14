#!/bin/bash

read -p "Choose H, M or L compression " file_compression
read -p "Which directory do you want to backup " dir_name1
read -p "Which directory do you want to backup to " dir_name2

test -d $HOME/$dir_name2 || mkdir -m 700 $HOME/$dir_name

backup_dir=$HOME/$dir_name2

tar_l="-cvf $backup_dir/b.tar --exclude $backup_dir $HOME/$dir_name1"
tar_m="-czvf $backup_dir/b.tar.gz --exclude $backup_dir $HOME/$dir_name1"
tar_h="-cjvf $backup_dir/b.tar.bzip2 --exclude $backup_dir $HOME/dir_name1"

if [ $file_compression = "L" ] ; then
tar_opt=$tar_l
elif [ $file_compression = "M" ]; then
tar_opt=$tar_m
else
tar_opt=$tar_h
fi
echo "tar $tar_opt"
exit 0
