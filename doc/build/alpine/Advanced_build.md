We use build_deps.sh script to build recent versions of libuv, openssl and hwloc as static libraries. We also use option -DBUILD_STATIC=ON to create a fully static executable without any dependencies, GPUs backeds not compatible with this option, resulting binary will be CPU only.

```
1. apk add git make cmake libstdc++ gcc g++ automake libtool autoconf linux-headers
2. git clone https://github.com/xmrig/xmrig.git
3. mkdir xmrig/build && cd xmrig/scripts
4. ./build_deps.sh && cd ../build
5. cmake .. -DXMRIG_DEPS=scripts/deps -DBUILD_STATIC=ON
6. make -j$(nproc)
```
