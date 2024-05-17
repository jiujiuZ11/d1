#!/bin/bash

# Initialize variables to keep track of the file with the least lines
min_lines=$(wc -l $(find submissions/ -name "*.java") | sort -n | head -n 1 | awk '{print $1}')
smallest_file=""

# Iterate through each submission directory and find all .java files
for submission_dir in submissions/*; do
  for java_file in $(find "$submission_dir" -name "*.java"); do
    # Count the number of lines in the current .java file
    line_count=$(wc -l < "$java_file")

    # Check if this file has fewer lines than the current minimum
    if [ "$line_count" -lt "$min_lines" ]; then
      min_lines=$line_count
      smallest_file=$java_file
    fi
  done
done

# Print the path to the file with the least lines to the terminal
echo "The .java file with the least lines is: $smallest_file with $min_lines lines."

# Store the path to the file with the least lines in biggest.txt
echo "$smallest_file" > biggest.txt
