#!/usr/bin/env bash

# Exit on error
set -e

[ ! "$1" ] && echo "No argument passed"; exit 1

for i in "$1"; do ffmpeg -i "$i" -c:v libx264 -preset veryslow -c:a copy "${i%.*}-1.${i##*.}"; done
