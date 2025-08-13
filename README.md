# LaTeX Resume Environment

This directory contains a streamlined environment for iterating on and previewing your LaTeX resume.

## Files

- `resume.tex` - Your LaTeX resume source file
- `compile.sh` - Script to compile your resume to PDF
- `watch.sh` - Script to watch for changes and auto-compile
- `README.md` - This instruction file

## Quick Start

### Option 1: Manual Compilation

```bash
cd resume
./compile.sh
```

This will:

- Compile `resume.tex` to `resume.pdf`
- Automatically open the PDF in your default viewer
- Clean up auxiliary LaTeX files

### Option 2: Auto-Watch Mode (Recommended)

```bash
cd resume
./watch.sh
```

This will:

- Perform an initial compilation
- Watch for changes to `resume.tex`
- Automatically recompile and refresh the PDF whenever you save changes
- Keep running until you press Ctrl+C

## Workflow

1. **Start the watch script**: Run `./watch.sh` in the resume directory
2. **Edit your resume**: Make changes to `resume.tex` in your editor
3. **Save the file**: The watch script will automatically detect changes and recompile
4. **View changes**: Your PDF viewer will automatically refresh with the updated resume
5. **Iterate**: Continue editing and saving - each save triggers a new compilation

## Requirements

- MacTeX
- fswatch

## Tips

- Keep the PDF viewer open while editing to see changes immediately
- The watch script will show compilation status and any errors in the terminal
- Use Ctrl+C to stop the watch script when you're done editing
- If you encounter compilation errors, check the terminal output for LaTeX error messages

## Troubleshooting

- If compilation fails, check your LaTeX syntax in `resume.tex`
- Make sure all required packages are installed (they should be with MacTeX)
- If the PDF doesn't open automatically, you can manually open `resume.pdf`
