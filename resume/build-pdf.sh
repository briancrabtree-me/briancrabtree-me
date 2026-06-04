#!/usr/bin/env bash
# Regenerate PDF from HTML (requires Docker).
set -euo pipefail
cd "$(dirname "$0")"
docker run --rm --user root \
  -v "$(pwd)":/resume \
  zenika/alpine-chrome:latest \
  --no-sandbox --disable-gpu --disable-dev-shm-usage \
  --print-to-pdf=/resume/Brian-Crabtree-Resume.pdf \
  file:///resume/Brian-Crabtree-Resume.html
echo "Wrote Brian-Crabtree-Resume.pdf"
