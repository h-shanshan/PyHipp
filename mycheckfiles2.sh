#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "#==============================="
echo "Start Times"
echo "==> " rplpl-slurm*.out "<=="
head -n 1 rplpl-slurm*.out
echo "==> " rplspl-slurm*.out "<=="
echo rplspl-slurm*.out
head -n 1 rplspl-slurm*.out

echo "End Times"
echo "==> " rplpl-slurm*.out "<=="
tail -n 5 rplpl-slurm*.out
echo "==> " rplspl-slurm*.out "<=="
tail -n 5 rplspl-slurm*.out

echo "#==============================="
