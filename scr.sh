#!/usr/bin/env bash

set -e
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
