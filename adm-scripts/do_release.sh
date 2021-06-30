#!/usr/bin/env bash
set -ex

[ -z "$1" ] && exit 1 || VERSION="$1"

#Maven deploy

cd ./io.github.rsotosan.lib.parent

mvn -B versions:set -DgenerateBackupPoms=false -DnewVersion="$VERSION"
mvn -B package
mvn -B deploy

# Github commit

cd ../

git config --global user.email "sotosanchezraul@gmail.com"
git config --global user.name "Raúl"
git add .
git commit -m "Update version to v$VERSION"
git push