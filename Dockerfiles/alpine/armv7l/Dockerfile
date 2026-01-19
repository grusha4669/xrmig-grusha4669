FROM arm32v7/alpine:latest
RUN apk add --no-cache \
    git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers \
    libuv-dev hwloc-dev openssl-dev \
    perl
RUN git clone https://github.com/xmrig/xmrig.git
WORKDIR /xmrig/scripts
CMD ["/bin/sh"]
