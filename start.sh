#!/bin/bash
# in case of conflict with local nginx:
# make sure in all *.confs (
#   also in default and example to avoid error like
#     'nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already
# in use)'
# )
# set for instance "listen 127.0.0.1:80" instead of "listen *:80"

# docker & network settings
DOCKER_IMAGE_NAME="docker-rit" # build of container's name
DOCKER_CONTAINER_NAME="ritcontainer" # build of container's name
# start conteiner if "docker some_image run" earlier
found_container=$(docker ps -a | grep "$DOCKER_CONTAINER_NAME")
if [ ! -z "$found_container" ]; then
    echo "Starting container"
    docker start "$DOCKER_CONTAINER_NAME"
else
    echo "Creating new container"
    docker run --cap-add=NET_ADMIN -i -v $PWD/entrypoint.sh:/entrypoint.sh -d --name="$DOCKER_CONTAINER_NAME" $DOCKER_IMAGE_NAME
fi

# also you can manually remove created virtual network interface
# ifconfig $DOCKER_NETWORK_INTERFACE_NAME down
