#!/bin/sh

cd "$GITHUB_WORKSPACE"

FILES="$(find . -type f -name "*.tex")"

sh /weasel.sh ${FILES}
sh /passive.sh ${FILES}
perl /dups.pl ${FILES}
