#!/bin/sh

# Setup
set -e
basedir="$1"
dest="${basedir}/target/repo/"
shift

# Copy files
while [ $# -gt 0 ]; do
	echo Processing $1
	mkdir -p "${dest}"
	cp -r "${basedir}/../$1" "${dest}/."
	shift
done

# Git repository
cd "${dest}"
git init
git config --global user.email "rzhang@redhat.com"
git config --global user.name "Ryan Zhang"
git add .[A-z]* *
git commit -m "Initial commit" -a
