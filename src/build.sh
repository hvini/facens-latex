#!/bin/sh

pdflatex main.tex
pdflatex main.tex
bibtex main
pdflatex main.tex
bibtex main
pdflatex main.tex
