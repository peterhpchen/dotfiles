#!/bin/sh

cat <<EOF
# apt
apt-get update
EOF

cat "$DOTS/apt/pkglist.txt" | awk '{print "apt install -y " $0}'
