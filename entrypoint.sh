#!/bin/sh

ls
echo "$GITHUB_WORKSPACE"

FILES="$(find ${GITHUB_WORKSPACE} -type f -name "*.tex")"

echo "$FILES"

ls $FILES

cd $GITHUB_WORKSPACE
ls

make -C / proof