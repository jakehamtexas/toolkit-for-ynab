#!/usr/bin/env sh

# Finds the check scripts in the check/ directory
# Must be run from the repo root
find_check_files() {
  find ./checks \
    -type f \
    -name '*.sh' \
    -not -name '_lib.sh'
}
