#!/bin/sh
# Compiles cv.tex and moves the PDF to assets/cv.pdf, which the website's CV link points to.
# Run after every change to cv.tex, then commit both the source and assets/cv.pdf.
set -e
cd "$(dirname "$0")"
latexmk -pdf -interaction=nonstopmode -halt-on-error cv.tex
mv cv.pdf ../assets/cv.pdf
latexmk -c cv.tex
