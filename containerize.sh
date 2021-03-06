#!/usr/bin/env bash
docker build --tag=capstone .
docker image ls
dockerpath=mohamn9/capstone
docker push $dockerpath