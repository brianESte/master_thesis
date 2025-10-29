#!/bin/bash
# Wrapper script for a Ghostscript command to embed fonts in the given PDF
# The utility "pdffonts" can be used to check if fonts are embedded

usage_msg="Usage:
\$ embed_pdf_fonts.sh <input file> [output file]

If output file is missing, output is written to input file (overwriting it)"

# Check for arguments
if [[ "$@" == "" ]]; then
	echo "$usage_msg"
	exit 0
fi
# check that input file exists
if [ ! -e $1 ]; then
	echo "Input file does exist! Check your file path"
	exit 1
fi
# Check if first argument is in fact a PDF
file_check=$(file -b $1)
if [[ ${file_check:0:3} != "PDF" ]]; then
	echo "Not a PDF!"
	exit 2
fi
# Set output file
output_file="output.pdf"
if [ $# -gt 1 ]; then
	output_file="$2"
fi
# perform font embedding
# https://stackoverflow.com/a/14435749
echo "Embedding fonts in ...$1 and writing to $output_file"
gs -q -dNOPAUSE -dBATCH -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=$output_file $1
echo "Done"
