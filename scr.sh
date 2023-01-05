#!/usr/bin/env bash

# Exit on error
set -e
# Include files starting with a dot
shopt -s globstar

read -p "file type?: " ftype

for i in ./**/*."$ftype"
do
	if [ "$(tail -c 1 "$i")" ]; then
		sed -i '$a\' "$i"
		echo fixed
	else
		echo ok
	fi
done
