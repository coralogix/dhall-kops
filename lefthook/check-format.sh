#!/usr/bin/env bash

set -euo pipefail

echo 'Checking formatting...'
while IFS= read -r -d '' dhall_file ; do
  echo "Checking: ${dhall_file} ..."
  dhall format --check --inplace "${dhall_file}"
done < <(find . -name '*.dhall' -print0)
echo 'Finished checking formatting successfully!'
