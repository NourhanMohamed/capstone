#!/bin/bash
dockerpath="mohamn9/capstone"
kubectl run capstone-pod\
    --image=$dockerpath\
    --port=80 --labels app=capstone_pod --image-pull-policy='IfNotPresent'
kubectl port-forward capstone-pod 8000:80