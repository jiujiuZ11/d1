# Add to the existing test loop in grade.sh
edge_cases=(" " "-1 -2 -3 0 1 2 3" "1000 999 1001")
for case in "${edge_cases[@]}"; do
  result=$(echo $case | java Sorter)
  echo "Edge case '$case' result: $result"
done
