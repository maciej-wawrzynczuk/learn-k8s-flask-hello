#!/bin/bash

readonly CONTAINER_NAME="fbfdsvafavvracdf"

docker build -t flask-hello .
docker run -d --name "${CONTAINER_NAME}" -p 8000:8000 flask-hello
sleep 3
curl localhost:8000
docker kill "${CONTAINER_NAME}"
