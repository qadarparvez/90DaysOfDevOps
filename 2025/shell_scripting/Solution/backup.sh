#!/bin/bash
#this is the script for backup

src=$1
dest=$2

timestamp=$(date +"%Y%m%d-%H%M")
zip "$dest/backup-$timestamp.zip" "$src"


#run command: ./backup.sh <source> <destination>
