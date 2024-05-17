#!/bin/bash
total_lines=0
file_count=0
for submission_dir in submissions/*; do
  for java_file in $(find "$submission_dir" -name "*.java"); do
    line_count=$(wc -l < "$java_file")
    total_lines=$((total_lines + line_count))
    file_count=$((file_count + 1))
  done
done
if [ $file_count -ne 0 ]; then
  average_lines=$((total_lines / file_count))
  echo "Average number of lines per .java file: $average_lines"
else
  echo "No .java files found."
fi
