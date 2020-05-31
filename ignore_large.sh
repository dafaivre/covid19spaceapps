#!/bin/bash

echo "Initiating .gitignore."

echo *.skyd > .gitignore

echo "Finding files larger than 100 MB and placing them in .gitignore."

find . -size +100M | sed 's|^\./||g' | cat >> .gitignore

echo "Removing './' from the beginning of each line in .gitignore."


