#!/usr/bin/env bash

# Create nfs directory for jenkins
sh $HOME/Jeus-cloudes/jeus-k8s-cloud/jenkins/nfs-exporter.sh jenkins

# Chnage permission
chown 1000:1000 /nfs_shared/jenkins/

# Set jenkins volume
kubectl apply -f $HOME/Jeus-cloudes/jeus-k8s-cloud/jenkins/jenkins-volume.yaml

# Install Jenkins
sh $HOME/Jeus-cloudes/jeus-k8s-cloud/jenkins/jenkins-install.sh