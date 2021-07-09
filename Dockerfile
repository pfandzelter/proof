FROM alpine:latest

COPY proof ./proof
RUN chmod +x ./proof

ENTRYPOINT [ "./proof" ]