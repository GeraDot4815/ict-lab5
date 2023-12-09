#!/bin/bash

#String for checking
format_string="I'm BRUH"

shopt -s globstar #without this we check only depth directories,
# and with it root directory too

for file in ./**/*.txt; do
  if [ -f "$file" ] && grep -qw "$format_string" "$file"; then
    echo "$file is good"
  else
    echo "$file OUT OF FORMAT!"
    exit 1  
  fi
done

echo "Well done! All writed"
exit 0