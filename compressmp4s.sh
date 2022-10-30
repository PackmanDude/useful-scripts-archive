#!/usr/bin/env bash

set -xe

[ ! "$1" ] && echo "No argument supplied"; exit 1

for i in {1..100}
do
	ffmpeg -i "$1" -preset veryslow -c:v libx264 -crf 51 -y "${1%.*}"-sus.mp4
	ffmpeg -i "${1%.*}"-sus.mp4 -preset veryslow -c:v libx264 -crf 51 -y "$1"
done

rm "${1%.*}"-sus.mp4
