#!/bin/bash

# LaTeX Resume Environment Setup Script

echo "🚀 Setting up LaTeX Resume Environment"
echo ""

# Check if MacTeX is installed
if ! command -v pdflatex &> /dev/null; then
    echo "❌ MacTeX not found. Please install MacTeX first:"
    echo "   brew install --cask mactex"
    exit 1
else
    echo "✅ MacTeX found"
fi

# Check if fswatch is available (for watch functionality)
if ! command -v fswatch &> /dev/null; then
    echo "⚠️  fswatch not found. Installing via Homebrew..."
    brew install fswatch
    echo "✅ fswatch installed"
else
    echo "✅ fswatch found"
fi

# Make scripts executable
chmod +x compile.sh
chmod +x watch.sh
echo "✅ Scripts made executable"

# Test compilation
echo ""
echo "🧪 Testing compilation..."
./compile.sh

echo ""
echo "🎉 Setup complete!"
echo ""
echo "Usage:"
echo "  ./compile.sh  - Compile once and open PDF"
echo "  ./watch.sh    - Watch for changes and auto-compile"
echo ""
echo "Start editing your resume with:"
echo "  ./watch.sh"
