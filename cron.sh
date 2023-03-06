#!/usr/bin/env bash
set -euo pipefail
cd $(dirname "$0")
./generate.sh 2>/dev/null | jq . > builds.json.new
test $(stat -c %s builds.json.new) -gt 0
mv builds.json.new builds.json
