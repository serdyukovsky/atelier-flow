#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Usage: $0 <url> [evidence-directory]" >&2
  echo "  KEEP_SESSION=1  leave the browser open for the next route in this round" >&2
  echo "                  (close it with: playwright-cli -s=<session> close)" >&2
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

# A cold browser start costs about three seconds; a command in an open session
# costs about a third of one. Set KEEP_SESSION=1 to pay the start once for a
# round that covers several routes, then close the session yourself.
cleanup() {
  if [ "${KEEP_SESSION:-}" = "1" ]; then
    printf 'Session %s left open. Close it with: playwright-cli -s=%s close\n' "$session" "$session"
    return
  fi
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

# `open` relaunches the browser even when the session is alive; `goto` reuses it
# and costs a quarter as much. Try the cheap path first and fall back to a start.
if ! playwright-cli -s="$session" goto "$url" >> "$log_file" 2>&1; then
  run playwright-cli -s="$session" open "$url" --browser=chromium
fi
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
