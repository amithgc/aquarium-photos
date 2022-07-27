#!/bin/bash
cd images
#ffmpeg -i * -c:v libx264 -crf 0 -y ../output.mp4

ffmpeg -framerate 10 -pattern_type glob -i "*.jpg" -c:v libx264 -crf 0 ../movie-generic.mp4
ffmpeg -framerate 10 -pattern_type glob -i '*.jpg' -vcodec libx264 -s 2048x1080 -pix_fmt yuv420p ../movie-apple.mp4
