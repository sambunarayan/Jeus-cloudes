#!/usr/bin/env bash

# Create Docker image
cd ~/Jeus-cloudes/jeus-k8s-cloud/jeus-todo
docker rmi -f $(docker images -f dangling=true -q)
docker build -t jeus-todo-img .
docker tag jeus-todo-img 192.168.2.10:8443/jeus-todo
docker push 192.168.2.10:8443/jeus-todo

# Remove local docker image
docker rmi 192.168.2.10:8443/jeus-todo
docker rmi jeus-todo-img
docker rmi $(docker images -f dangling=true -q)

# Deploy 
kubectl apply -f jeus-todo.yaml