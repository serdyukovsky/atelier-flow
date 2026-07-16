#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Usage: $0 <url> [evidence-directory]" >&2
  exit 64
fi

if ! command -v playwright-cli >/dev/null 2>&1; then
  echo "BLOCKED: playwright-cli is not installed." >&2
  echo "Ask for approval to install @playwright/cli and Chromium; do not fall back to npx." >&2
  exit 2
fi

url="$1"
evidence_dir="${2:-docs/reviews/browser-qa}"
project_name="$(basename "$PWD" | tr -cs '[:alnum:]_-' '-')"
session="${PLAYWRIGHT_CLI_SESSION:-browser-qa-${project_name}}"

cleanup() {
  playwright-cli -s="$session" close >/dev/null 2>&1 || true
}
trap cleanup EXIT

mkdir -p "$evidence_dir"
log_file="$evidence_dir/playwright.log"
: > "$log_file"

run() {
  if ! "$@" >> "$log_file" 2>&1; then
    echo "Browser QA failed. See $log_file" >&2
    tail -n 25 "$log_file" >&2
    exit 1
  fi
}

run playwright-cli -s="$session" open "$url" --browser=chromium
run playwright-cli -s="$session" resize 1440 900
run playwright-cli -s="$session" screenshot --filename="$evidence_dir/desktop.png"
run playwright-cli -s="$session" resize 390 844
run playwright-cli -s="$session" screenshot --filename="$evidence_dir/mobile.png"
if ! playwright-cli -s="$session" console error > "$evidence_dir/console-errors.txt" 2>> "$log_file"; then
  echo "Browser QA failed. See $log_file" >&2
  tail -n 25 "$log_file" >&2
  exit 1
fi

printf 'Browser QA evidence saved to %s\n' "$evidence_dir"
