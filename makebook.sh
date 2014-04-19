#!/bin/bash

cd src || exit

echo "" > ../book.html


for i in `find . -maxdepth 1 ! -name . -prune`
  do
    mkdir -p ../dist/$i
    echo "<li><a href='dist${i:1}'>${i:5}</a>" >> ../book.html
    echo "<ul>" >> ../book.html
    echo "find $i"
    for j in `find $i/*.md -maxdepth 1 ! -name . -prune`
    do
      echo "<li><a href='dist/${j}'>${j:2}</a></li>" >> ../book.html
    done
    echo "</ul></li>" >> ../book.html
  done