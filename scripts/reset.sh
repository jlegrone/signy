#!/bin/bash

docker rm registry
docker volume ls
docker volume prune
rm -rf ~/.signy
rm -rf ~/.docker/trust/tuf/localhost:5000
