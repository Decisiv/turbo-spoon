#!/bin/sh -l

set -eu

cat << EOF > $HOME/.netrc
machine push.fury.io
  login $GEMFURY_TOKEN
EOF

sh -c "for f in $*; do curl --netrc -F package=@${f} https://push.fury.io/decisiv/; done;"
