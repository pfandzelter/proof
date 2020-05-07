# Container image that runs your code
FROM alpine:3.10

RUN apk add --update make

COPY Makefile .
COPY passive.sh .
COPY weasel.sh
COPY dups.pl .

ENTRYPOINT ["make"]