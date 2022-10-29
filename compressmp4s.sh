#!/usr/bin/env bash

[ ! "$1" ] && echo "Provide an argument with <video>.mp4"; exit 1

for i in {1..100}
do
	ffmpeg -i "$1" -preset veryslow -c:v libx264 -crf 51 -y "${1%.*}"-sus.mp4
	ffmpeg -i "${1%.*}"-sus.mp4 -preset veryslow -c:v libx264 -crf 51 -y "$1"
done

rm "${1%.*}"-sus.mp4
