pnmtoindiv
==========

pnm to individual pnm

First shot at a script to convert a multiple image pnm file to individual pnm files. For some reason I didn't find a good tool to do that except ImageMagick, but that didn't work for me due to some performance issues.

Currently the script supports PPM files only (P6), maybe I will extend this later to support all formats.

I used the script to convert a gource created image file to single image files to make it into a mp4, which didn't work with the multiple image file with ffmpeg directly.

The script has been tested with Strawberry Perl in Windows 7, it should work with Linux perl, not sure about ActiveState perl.
The script is currently missing options parsing, the input file is called 0001.ppm, the resulting files are called imageNNNN.ppm


Alexander Lehmann <alexlehm@gmail.com>

