#!/bin/bash
for file in $(find . -type f -print); do 
  ffprobe -v error -select_streams a:0 -show_entries stream=duration -of default=noprint_wrappers=1:nokey=1 "$file"
done|paste -sd+|bc -l
