#!/usr/bin/env sh
set -eu
# Explicit destination avoids silently changing several host installations.
repo_dir="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
exec python3 "$repo_dir/scripts/capability.py" install "$@"
