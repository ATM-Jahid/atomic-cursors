#!/bin/sh

# Provide the path that has subdirs of svg and meta
if [ $# -ne 1 ]; then
	echo "Usage: $0 <path_to_directory>"
	exit 1
fi

path="$1"
echo $path

for subdir in "$path"/*/; do
	name=$(basename "$subdir")
	zip -jr "${path}/${name}.hlc" "$subdir"/*
done
