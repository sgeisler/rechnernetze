#!/bin/bash

latexmk -pdf -interaction=nonstopmode main.tex
git add -f main.pdf
git commit -m "build pdf"
git push -f https://sgeisler:$GITHUB_TOKEN@github.com/sgeisler/rechnernetze.git HEAD:gh-pages
