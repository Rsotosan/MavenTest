#!/usr/bin/env bash

[ -z "$1" ] && exit 1 || VERSION="$1"

#Maven deploy

cd /io.github.rsotosan.lib.parent

mvn versions:set -DnewVersion="$VERSION"
mvn clean compile package 
mvn clean deploy

# Github commit

git add \\*pom.xml
git commit -m "Update version to v$VERSION"
git push