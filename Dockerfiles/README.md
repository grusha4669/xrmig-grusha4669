aarch64v8
===
sudo docker buildx build --no-cache --platform linux/arm64 -t $(basename "$(pwd)") .

sudo docker run  --platform linux/arm64 --name $(basename "$(pwd)") -it $(basename "$(pwd)")

x86_64
===
sudo docker buildx build --no-cache --platform linux -t $(basename "$(pwd)") .

sudo docker run --name $(basename "$(pwd)") -it $(basename "$(pwd)")

GENERAL
===

sudo docker container rm $(basename "$(pwd)")

sudo docker cp $(basename "$(pwd)"):/xmrig-grusha4669/build/xmrig .
