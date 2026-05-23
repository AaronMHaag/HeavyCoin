#!/bin/bash
# Build the HeavyCoin dev image with a stable tag.
# Run this on the host before mount.sh.
cd "$(dirname "$0")"
docker build -t heavycoin-dev .
