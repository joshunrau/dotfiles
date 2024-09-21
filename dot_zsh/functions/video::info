#!/usr/bin/env zsh

if [[ -z "$1" ]]; then
  echo "Error: must specify target file"
  exit 1
fi

ffprobe -v quiet -print_format json -show_format -show_streams "$1"
