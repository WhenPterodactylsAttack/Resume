#!/bin/bash

# LaTeX Resume Compilation Script
# This script compiles the resume.tex file to PDF

echo "🔨 Compiling resume.tex..."

# Clean previous compilation files
rm -f *.aux *.log *.out *.fdb_latexmk *.fls *.synctex.gz

# Compile the LaTeX file
pdflatex -interaction=nonstopmode resume.tex

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "✅ Resume compiled successfully!"
    echo "📄 Output: resume.pdf"
    
    # Open the PDF if it exists
    if [ -f "resume.pdf" ]; then
        echo "🔍 Opening PDF preview..."
        open resume.pdf
    fi
else
    echo "❌ Compilation failed. Check the output above for errors."
    exit 1
fi

# Clean up auxiliary files
rm -f *.aux *.log *.out *.fdb_latexmk *.fls *.synctex.gz

echo "🧹 Cleaned up auxiliary files."
