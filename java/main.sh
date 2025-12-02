#!/bin/sh

# Fail on unset variables and command errors
set -ue -o pipefail

# Prevent commands misbehaving due to locale differences
export LC_ALL=C

java Greeting "$@"   # `./main.sh world`で実行可能
