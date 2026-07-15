#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <new-project-directory>" >&2
  exit 64
fi

source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/../templates/project" && pwd)"
destination="${1%/}"

if [ -e "$destination" ] && [ -n "$(find "$destination" -mindepth 1 -maxdepth 1 -print -quit)" ]; then
  echo "Refusing to overwrite non-empty directory: $destination" >&2
  exit 65
fi

mkdir -p "$destination"
cp -R "$source_dir"/. "$destination"/
printf 'Created Atelier Flow project skeleton: %s\n' "$destination"
