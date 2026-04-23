#!/bin/bash

echo "=============================="
echo "🧪 COBOL REAL TEST START"
echo "=============================="

cobc -x -free programs/numbers.cob -o numbers

if [ $? -ne 0 ]; then
  echo "❌ COMPILATION FAILED"
  exit 1
fi

OUTPUT=$(./numbers)

echo "📤 OUTPUT = $OUTPUT"

if [ "$OUTPUT" = "5" ]; then
  echo "✅ TEST PASS"
  exit 0
else
  echo "❌ TEST FAIL"
  exit 1
fi
