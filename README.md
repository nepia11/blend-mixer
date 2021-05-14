# Blender-Mixer-Container

https://github.com/ubisoft/mixer

これのコンテナイメージを作るやつです

## build

`docker build -t blend-mixer .`

or

`podman build -t blend-mixer`

## run

`docker run --name mixer1 -itd -p 12800:12800 blend-mixer`

or

`podman run --name mixer1 -itd -p 12800:12800 blend-mixer`
