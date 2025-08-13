#!/bin/bash

# LaTeX Resume Watch Script
# This script watches for changes to resume.tex and automatically recompiles

echo "👀 Watching resume.tex for changes..."
echo "Press Ctrl+C to stop watching"
echo ""

# Check if fswatch is available
if ! command -v fswatch &> /dev/null; then
    echo "⚠️  fswatch not found. Installing via Homebrew..."
    brew install fswatch
fi

# Initial compilation
echo "🔨 Initial compilation..."
./compile.sh

echo ""
echo "👀 Now watching for changes to resume.tex..."
echo "   Make changes to your resume and save - it will auto-compile!"
echo ""

# Watch for changes and recompile
fswatch -o resume.tex | while read f; do
    echo "📝 Change detected in resume.tex"
    ./compile.sh
    echo ""
    echo "👀 Continuing to watch for changes..."
done
