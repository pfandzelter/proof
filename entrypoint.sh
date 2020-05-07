#!/bin/sh

cd "$GITHUB_WORKSPACE"

FILES="$(find . -type f -name "*.tex")"

sh /weasel.sh ${TEXFILES}
sh /passive.sh ${TEXFILES}
perl /dups.pl ${TEXFILES}
