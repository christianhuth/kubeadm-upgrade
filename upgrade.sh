#!/bin/bash

VERSION=$1

echo $VERSION

sudo apt-mark unhold kubeadm && \
sudo apt-get update && \
sudo apt-get install -y kubeadm=$VERSION-00 && \
sudo apt-mark hold kubeadm

kubeadm version

kubeadm upgrade plan

kubeadm upgrade apply v$VERSION

sudo apt-mark unhold kubelet kubectl && \
sudo apt-get update && \
sudo apt-get install -y kubelet=$VERSION-00 kubectl=$VERSION-00 && \
sudo apt-mark hold kubelet kubectl

sudo systemctl daemon-reload
sudo systemctl restart kubelet
