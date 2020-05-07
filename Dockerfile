# Container image that runs your code
FROM alpine:3.10

RUN apk add --update make

COPY Makefile Makefile
COPY passive.sh passive.sh
COPY weasel.sh weasel.sh
COPY dups.pl dups.pl

RUN ls

ENTRYPOINT ["make", "-C", "/", "proof"]
