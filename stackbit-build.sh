#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 6005fdc36bcc9e5314fb4c83

echo "stackbit-build.sh: finished build"
