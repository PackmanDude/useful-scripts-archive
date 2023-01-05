#!/usr/bin/env bash

# Exit on error
set -e

[ ! "$1" ] && echo "No argument passed"; exit 1

for i in {1..100}
do
	# You cannot overwrite file, from which you're reading now. So, we create a separate file.
	# Its name exmaple: `<video-name>-sus.<video-extension>`
	ffmpeg -i "$1" -c:v libx264 -preset veryslow -crf 51 -y "${1%.*}-sus.${1##*.}"
	ffmpeg -i "${1%.*}-sus.${1##*.}" -c:v libx264 -preset veryslow -crf 51 -y "$1"
done

rm "${1%.*}-sus.${1##*.}"
