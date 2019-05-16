#!/bin/sh -l

set -eu

cat << EOF > $HOME/.netrc
machine push.fury.io
  login $GEMFURY_TOKEN
EOF

sh -c "/furypush.sh $*"
