FROM ubuntu:24.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        build-essential \
        git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt

RUN git clone --depth=1 https://github.com/tammet/gkc.git

WORKDIR /opt/gkc

RUN chmod +x compile.sh && ./compile.sh

RUN ln -s /opt/gkc/gkc /gkc

CMD ["/bin/bash"]
