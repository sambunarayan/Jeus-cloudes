#!/usr/bin/env bash

# Create nfs directory for jenkins
sh $HOME/Jeus-cloudes/jeus-k8s-cloud/jenkins/nfs-exporter.sh

# Set jenkins volume
kubectl apply -f $HOME/Jeus-cloudes/jeus-k8s-cloud/jenkins/jenkins-volume.yaml

# Install Jenkins
sh $HOME/Jeus-cloudes/jeus-k8s-cloud/jenkins/jenkins-install.sh