#!/bin/bash

# this script saved me from having to rewrite all of the pages from markdown to html...

shopt -s globstar

for file in ./* ./**/*;
do
  filepath=${file%.*}
  lowdown -s -o "$filepath.html" "$filepath.html"
done
