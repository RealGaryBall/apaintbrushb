#!/bin/bash
docker run -it \
	--name zmk-ardux-dev \
	--network host \
	--privileged \
	-v /dev:/dev \
	-v zmk:/workspaces/zmk \
	-v ./:/workspaces/zmk-ardux \
        -v ./.build:/workspaces/zmk/app/build \
	zmk-ardux:latest \
	/bin/bash
