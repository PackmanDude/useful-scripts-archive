#!/usr/bin/env bash

if [[ -z $1 ]]; then
	echo 'provide an argument, for more detail look inside the code'
	exit 1
fi

for i in "$1"; do ffmpeg -i "$i" -preset veryslow "${i%.*}-1.mp4"; done
