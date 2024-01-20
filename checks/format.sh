#!/usr/bin/env bash

# The CI variable is present when running in GitHub actions/workflows.
if [ -z "$CI" ]; then
  yarn pretty-quick --staged
else
  yarn pretty-quick --check
fi
