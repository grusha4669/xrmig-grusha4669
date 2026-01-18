The basic build is easy to use on a local machine. However, if you plan to run the miner on other machines, consider using the advanced build.

```
1. sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
2. git clone https://github.com/xmrig/xmrig.git
3. mkdir xmrig/build && cd xmrig/build
4. cmake ..
5. make -j$(nproc)
```

