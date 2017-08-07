#!/bin/bash

sed -i -e "s/GITVERSION/$(git log --pretty=format:'%h' -n 1)/g" main.tex
latexmk -pdf -interaction=nonstopmode main.tex
git add -f main.pdf
git commit -m "build pdf"
git push -f https://sgeisler:$1@github.com/sgeisler/rechnernetze.git HEAD:gh-pages
