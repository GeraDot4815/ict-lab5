#!/bin/bash

#String for checking
format_string="I'm BRUH"

#Write filenames and paths in array, use -r for recursion, -l for only filename output,
# -w for full comaring of word
mapfile -t files_arr < <(grep -rlw  --include="*.txt" "$format_string")

#check result
for el in "${files_arr[@]}"; do
    echo "$el"
    git add "$el"
done