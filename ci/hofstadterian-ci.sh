#!/usr/bin/env bash
# One-process copy of .github/workflows/ci.yml, for runners that are not GitHub
# Actions: Cloudflare Workers Builds (decision 566's zero-spend CI lane;
# decision 684: all build actions move to Cloudflare). It proves the same
# things as the workflow, in the same order, and exits non-zero on the first
# failure. It deploys nothing.
set -euo pipefail
cd "$(dirname "$0")/.."
python3 --version
python3 -m pip install -r requirements.txt
python3 -m compileall -q scripts
