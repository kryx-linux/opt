#!/usr/bin/env bash
set -euo pipefail

. Pkgfile

curl -fsSL "https://api.github.com/repos/libjxl/libjxl/git/trees/v${version}?recursive=1" |
  jq -r '
    .tree[]
    | select(.type == "commit")
    | "_\(.path | split("/")[-1] | gsub("-"; "_"))_commit=\(.sha)"
  '
