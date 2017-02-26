FROM ubuntu:14.04.5

RUN apt-get update && \
    apt-get install -y \
        python3 \
        openssl \
        && \
    rm -rf /var/lib/apt/lists/*

COPY start server.py /

CMD ["./start"]
