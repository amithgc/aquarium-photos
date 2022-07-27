#!/bin/bash
cd images
ffmpeg -framerate 10 -pattern_type glob -i '*.jpg' -vcodec libx264 -s 2048x1080 -pix_fmt yuv420p ../movie.mp4
