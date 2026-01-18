The basic build is easy to use on a local machine. However, if you plan to run the miner on other machines, consider using the advanced build.

```
1. apk add git make cmake libstdc++ gcc g++ libuv-dev openssl-dev hwloc-dev
2. git clone https://github.com/xmrig/xmrig
3. mkdir xmrig/build && cd xmrig/build
4. cmake ..
5. make -j$(nproc)
```
