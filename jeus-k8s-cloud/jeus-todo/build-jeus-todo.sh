#!/usr/bin/env bash

# clone jeus-todo git branch
git clone https://github.com/sambunarayan/jeus-apis.git
git clone https://github.com/sambunarayan/Jeus-cloudes.git

# build
cd jeus-apis/jeus-todo
gradle clean build

# Create Docker image
cd ~/Jeus-cloudes/jeus-k8s-cloud/jeus-todo
docker build -t jeus-todo-img .
docker tag jeus-todo-img 192.168.2.10:8443/jeus-todo
docker push 192.168.2.10:8443/jeus-todo

# Remove local docker image
docker rmi 192.168.2.10:8443/jeus-todo
docker rmi jeus-todo-img
docker rmi $(docker imges -f dangling=true -q)

# Deploy 
kubectl apply -f jeus-todo.yaml