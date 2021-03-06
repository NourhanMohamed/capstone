#!/usr/bin/env bash
docker build --tag=capstone .
docker image ls
dockerpath=mohamn9/capstone
docker login --username mohamn9
docker push $dockerpath