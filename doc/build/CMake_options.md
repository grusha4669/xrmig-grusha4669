20260118230857

Algorithms
-DWITH_CN_LITE=OFF disable all CryptoNight-Lite algorithms (cn-lite/*).
-DWITH_CN_HEAVY=OFF disable all CryptoNight-Heavy algorithms (cn-heavy/*).
-DWITH_CN_PICO=OFF disable CryptoNight-Pico algorithms (cn-pico and cn-pico/tlo).
-DWITH_CN_FEMTO=OFF disable CryptoNight-UPX2 algorithm.
-DWITH_RANDOMX=OFF disable RandomX algorithms (rx/*).
-DWITH_ARGON2=OFF disable Argon2 algorithms (argon2/*).
-DWITH_KAWPOW=OFF disable KawPow algorithm (kawpow).
-DWITH_GHOSTRIDER=OFF disable GhostRider algorithm (gr).

Features
-DWITH_HWLOC=OFF disable hwloc  support. Disabling this feature is not recommended in most cases. This feature add external dependency to libhwloc (1.10.0+), except MSVC builds.
-DWITH_LIBCPUID=OFF disable built in libcpuid support, this feature always disabled if hwloc enabled, if both hwloc and libcpuid disabled auto configuration for CPU will very limited.
-DWITH_HTTP=OFF disable built in HTTP support, this feature used for HTTP API and daemon (solo mining) support.
-DWITH_TLS=OFF disable SSL/TLS support (secure connections to pool). This feature add external dependency to OpenSSL.
-DWITH_ASM=OFF disable assembly optimizations for modern CryptoNight algorithms.
-DWITH_EMBEDDED_CONFIG=ON enable embedded  config support.
-DWITH_OPENCL=OFF disable OpenCL backend.
-DWITH_CUDA=OFF disable NVIDIA CUDA backend.
-DWITH_NVML=OFF disable NVML (NVIDIA Management Library) support (this feature available only if CUDA enabled).
-DWITH_MSR=OFF disable MSR mod & 1st-gen Ryzen fix.
-DWITH_ADL=OFF disable ADL (AMD Display Library) or sysfs support (this feature available only if OpenCL enabled).
-DWITH_PROFILING=ON enable profiling for developers.
-DWITH_SSE4_1=OFF disable SSE 4.1 for Blake2.
-DWITH_BENCHMARK=OFF disable builtin RandomX benchmark and stress test.
-DWITH_SECURE_JIT=ON enable secure access to JIT memory. OFF by default on all OS except macOS with ARM CPU.
-DWITH_DMI=OFF disable DMI/SMBIOS reader.

Debug options
-DWITH_DEBUG_LOG=ON enable debug log (mostly network requests).
-DHWLOC_DEBUG=ON enable some debug log for hwloc.
-DCMAKE_BUILD_TYPE=Debug enable debug build, only useful for investigate crashes, this option slow down miner.

Special build options
-DBUILD_STATIC=ON build fully static executable, this option works as expected only on Alpine Linux and FreeBSD.
-DXMRIG_DEPS=<path> path to precompiled dependencies .
-DARM_TARGET=<number> override ARM target, possible values 7 (ARMv7) and 8 (ARMv8).
-DUV_INCLUDE_DIR=<path> custom path to libuv headers.
-DUV_LIBRARY=<path> custom path to libuv library.
-DHWLOC_INCLUDE_DIR=<path> custom path to hwloc headers.
-DHWLOC_LIBRARY=<path> custom path to hwloc library.
-DOPENSSL_ROOT_DIR=<path> custom path to OpenSSL.
-DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ custom C and C++ compiler.
