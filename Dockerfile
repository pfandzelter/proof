FROM debian:latest

COPY proof /proof
RUN chmod +x /proof

ENTRYPOINT [ "bash", "/proof" ]
