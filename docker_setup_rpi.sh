#!/bin/bash
docker volume create zmk

cd .devcontainer

docker build --network host -t zmk-ardux:latest -f ./Dockerfile.rpi

docker run --rm \
	--network host \
	-v zmk:/workspaces/zmk \
	zmk-ardux:latest \
	/bin/bash -c "git clone https://github.com/zmkfirmware/zmk /workspaces/zmk/"

docker run \
	--name zmk-ardux-setup \
	--network host \
	-v zmk:/workspaces/zmk \
	zmk-ardux:latest \
	/bin/bash -c "source ~/.bashrc && cd /workspaces/zmk && west init -l app/ && west update && west zephyr-export && pip3 install --user -r zephyr/scripts/requirements-base.txt"

docker commit zmk-ardux-setup zmk-ardux:latest

docker rm -f zmk-ardux-setup

cd ..

