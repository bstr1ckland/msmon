#!/bin/bash

# Cleans builds artifacts
# Will clean /build .o files, and /bin execs.
# Usage: ./clean.sh
# Note: Should be run from /scripts directory.

# Note: Should be used before committing changes in git.

set -e

echo "clean.sh: Cleaning build artifacts in bin/ and build/ ..."
make -C .. clean
echo "clean.sh: Cleaning done!"