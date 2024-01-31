#!/bin/bash

shopt -s globstar

for file in ./* ./**/*;
do
  filepath=${file%.*}
  lowdown -s -o "$filepath.html" "$filepath.html"
done
