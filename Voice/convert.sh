#!/bin/sh
#A simple bash script to conver text files into OGG
for f in  *.txt
do
text2wave "$f" -o "$f.wav"
done
oggenc *.wav
rm ./*.wav

