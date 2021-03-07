#!/bin/bash
dockerpath="mohamn9/capstone"
kubectl create deployment capstone --image=$dockerpath
kubectl expose deployment capstone --port=80 --target-port=80 --type=NodePort  --overrides '{ "apiVersion": "v1","spec":{"ports":[{"port":80,"protocol":"TCP","targetPort":80,"nodePort":30031}]}}'