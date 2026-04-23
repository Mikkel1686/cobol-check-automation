#!/bin/bash

echo "=============================="
echo "🧪 COBOL CHECK STYLE TEST RUN"
echo "=============================="

echo ""
echo "📦 COMPILING PROGRAM"
cobc -x -free programs/numbers.cob -o numbers

if [ $? -ne 0 ]; then
  echo "❌ COMPILATION FAILED"
  exit 1
fi

echo "✅ COMPILATION OK"

echo ""
echo "🚀 RUNNING PROGRAM"
OUTPUT=$(./numbers)

echo "OUTPUT = $OUTPUT"

if [ "$OUTPUT" -eq 5 ]; then
  echo "✅ TEST PASS"
  exit 0
else
  echo "❌ TEST FAIL"
  exit 1
fi
