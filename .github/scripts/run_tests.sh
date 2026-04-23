#!/bin/bash

echo "=== COBOL REAL TEST ==="

cobc -x programs/numbers.cob -o numbers

OUTPUT=$(./numbers)

echo "OUTPUT = $OUTPUT"

if [ "$OUTPUT" = "5" ]; then
  echo "TEST PASS"
  exit 0
else
  echo "TEST FAIL"
  exit 1
fi
