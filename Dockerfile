# Container image that runs your code
FROM alpine:3.10

RUN apk add --update make

COPY Makefile Makefile
COPY passive.sh passive.sh
COPY weasel.sh weasel.sh
COPY dups.pl dups.pl
COPY entrypoint.sh entrypoint.sh

RUN ls
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]