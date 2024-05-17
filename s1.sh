#!/bin/bash

# Initialize variables to keep track of the file with the most lines
max_lines=0
biggest_file=""

# Iterate through each submission directory and find all .java files
for submission_dir in submissions/*; do
  for java_file in $(find "$submission_dir" -name "*.java"); do
    # Count the number of lines in the current .java file
    line_count=$(wc -l < "$java_file")

    # Check if this file has more lines than the current maximum
    if [ "$line_count" -gt "$max_lines" ]; then
      max_lines=$line_count
      biggest_file=$java_file
    fi
  done
done

# Print the path to the file with the most lines to the terminal
echo "The .java file with the most lines is: $biggest_file with $max_lines lines."
