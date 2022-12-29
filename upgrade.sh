#!/bin/bash

VERSION=$1

echo $VERSION

apt-mark unhold kubeadm && \
apt-get update && apt-get install -y kubeadm=$VERSION-00 && \
apt-mark hold kubeadm

kubeadm version

kubeadm upgrade plan

kubeadm upgrade apply v$VERSION
