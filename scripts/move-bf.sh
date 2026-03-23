#!/bin/bash

# Define the source file
source_file="scripts/59e0a8df964e4540d5abe599.md"

# Define the destination directory
destination_dir="curriculum/challenges"

# Loop through only the specified language directories
for lang in german swahili japanese korean; do
    cp "./$source_file" "./$destination_dir/$lang/blocks/rosetta-code-challenges/"
done
