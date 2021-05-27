#!/bin/bash
export docker_ps=$(docker ps --format "{{.ID}}")
docker kill $docker_ps
docker build . -t my-app
docker run -d -p 80:80 my-app
