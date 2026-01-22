FROM alpine:latest
RUN apk add --no-cache \
    git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers \
    hwloc-dev \
    perl
RUN git clone https://github.com/grusha4669/xmrig-grusha4669.git
WORKDIR /xmrig-grusha4669/scripts/
RUN ./build_deps.sh
WORKDIR /xmrig-grusha4669/build/
RUN cmake .. -DXMRIG_DEPS=../scripts/deps -DBUILD_STATIC=ON \
    -DWITH_OPENCL=OFF -DWITH_CUDA=OFF \
    -DWITH_HTTP=OFF \
    -DUV_INCLUDE_DIR=../scripts/deps/include \
    -DUV_LIBRARY=../scripts/deps/lib/libuv.a \
    -DOPENSSL_ROOT_DIR=../scripts/deps \
    -DOPENSSL_CRYPTO_LIBRARY=../scripts/deps/lib/libcrypto.a \
    -DOPENSSL_INCLUDE_DIR=../scripts/deps/include \
    -DOPENSSL_SSL_LIBRARY=../scripts/deps/lib/libssl.a \
    -DHWLOC_INCLUDE_DIR=../scripts/deps/include \
    -DHWLOC_LIBRARY=../scripts/deps/lib/libhwloc.a \
    -DCMAKE_EXE_LINKER_FLAGS="-static"
RUN make -j$(nproc)
CMD ["/bin/sh"]
