#!/usr/bin/env bash

set -e

[ ! "$1" ] && echo "No argument supplied"; exit 1

for i in "$1"; do ffmpeg -i "$i" -preset veryslow "${i%.*}-1.mp4"; done
