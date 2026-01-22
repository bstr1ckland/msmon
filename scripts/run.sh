#!/bin/bash 

# Builds and runs the code
# Usage: ./run.sh
# Note: Should be run from /scripts directory.

set -e

echo "run.sh: Building code with Makefile ..."
make -C ..
echo "run.sh: Code built"
echo "run.sh: Running code ..."
../bin/msmon