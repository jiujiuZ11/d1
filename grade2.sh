#!/bin/bash

# Define the original directory
original_dir=$(pwd)

# Iterate through each submission directory
for submission_dir in submissions/*; do
  echo $submission_dir
  cd $submission_dir

  # Attempt to compile Sorter.java
  if ! javac Sorter.java 2> compile_error.txt; then
    echo "$submission_dir: Compile error" > result.txt
    cd $original_dir
    continue
  else
    echo "Compile successful for $submission_dir"
  fi

  # Initialize counters for passed and failed tests
  passed=0
  failed=0
  for test_file in $original_dir/test-data/*.txt; do
    result=$(java Sorter < $test_file)
    expect=$(cat $test_file.expect)
    if [[ $expect == $result ]]; then
      passed=$((passed+1))
    else
      failed=$((failed+1))
    fi
  done
  echo "$submission_dir: Test results: $passed passed, $failed failed" > result.txt
  cd $original_dir
done

# Find all result.txt files and store the ones with compile errors in compile-errors.txt
all_results=$(find submissions -name "result.txt")
cat $all_results | grep "Compile error" > compile-errors.txt

# Store the results of successfully ran programs in run-results.txt
cat $all_results | grep -v "Compile error" > run-results.txt
