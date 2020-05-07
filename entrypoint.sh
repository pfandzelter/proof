#!/bin/sh

ls
echo "$GITHUB_WORKSPACE"

FILES="$(find ${GITHUB_WORKSPACE} -type f -name "*.tex")"

echo "$FILES"

ls $FILES

make -C / proof