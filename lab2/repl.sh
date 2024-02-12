#!/bin/bash
rm text.tx
cp original.txt text.txt
sed 's/t/e/g; s/z/t/g; s/u/z/g; s/i/q/g; s/q/t/g; s/t/e/g' text.txt > new_text.txt
mv new_text.txt text.txt
output=$(./crypto.sh count letters text.txt percentsort)
echo "$output"
