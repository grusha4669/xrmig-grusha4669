#!/bin/sh -e

mkdir -p deps
mkdir -p deps/include
mkdir -p deps/lib

mkdir -p build && cd build

UV_VERSION="$(ls -d ../../lib/libuv-* | awk -F'-' '{print $2}')"

cp -r ../../lib/libuv-${UV_VERSION} ..

cd ../libuv-${UV_VERSION}
sh autogen.sh
./configure --disable-shared
make -j$(nproc || sysctl -n hw.ncpu || sysctl -n hw.logicalcpu)
cp -fr include ../../deps
cp .libs/libuv.a ../../deps/lib
cd ..
