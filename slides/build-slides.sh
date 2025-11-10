#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename (without extension)>"
    exit 1
fi

FILE="$1"
OUTPUT="pdfs"

pandoc "${FILE}.md" --include-in-header=preamble.tex -t beamer -o "${OUTPUT}/${FILE}.pdf"

echo "PDF generated: ${OUTPUT}/${FILE}.pdf"
