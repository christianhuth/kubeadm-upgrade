# kubeadm-upgrade

Simple upgrade script for a single node cluster build with kubeadm.

## Usage

```bash
./upgrade.sh x.y.z
```

Example: 

```bash
./upgrade.sh 1.26.0
```

## Determine version

To determine which version to upgrade to, use:

```bash
sudo apt-get update && \
sudo apt-cache madison kubeadm
```
