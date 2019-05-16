#!/bin/sh

set -eu

for file in $*; do
  curl --netrc -F "package=@${file}" "https://push.fury.io/decisiv/"
done
