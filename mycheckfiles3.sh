#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "#==============================="
echo "Start Times"
echo "==> "*.out "<=="
head -n 1 *.out

echo "End Times"
echo "==> "*.out "<=="
tail -n 5 *.out

echo "#==============================="
