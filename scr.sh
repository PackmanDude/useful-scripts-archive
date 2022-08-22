#!/usr/bin/env bash

shopt -s globstar

read -p "file type?: " ftype

for i in ./**/*."$ftype"
do
	if [[ ! -z "$(tail -c 1 "$i")" ]]; then
		sed -i '$a\' "$i"
		echo fixed
	else
		echo ok
	fi
done
