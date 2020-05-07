TEXFILES := $(shell find ${GITHUB_WORKSPACE} -type f -name "*.tex")

.PHONY: proof weasel passive dups

proof: weasel passive dups

weasel:
	echo $(TEXFILES)
	sh weasel.sh $(TEXFILES)

passive:
	sh passive.sh $(TEXFILES)

dups:
	perl dups.pl $(TEXFILES)
