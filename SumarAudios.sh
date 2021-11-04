#!/bin/bash
for file in $(find . -type f -print); do 
  ffprobe -v error -select_streams a:0 -show_entries stream=duration -of default=noprint_wrappers=1:nokey=1 "$file"
done|paste -sd+|bc -l
# en caso que el directorio no tenga subdirectorios, reemplazar la primera fila por
#for file in *; do
#en caso que el directorio sin subdirectorios tenga archivos de varios tipos, puede acotarse la iteración
# usando *.wav o *.mp3 en lugar de *
