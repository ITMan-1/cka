#!/bin/bash
# kubeadm installation script for Kubernetes 1.33 + Calico v3.30.1
# This supports Ubuntu 20.04+ (including 24.04). Run with sudo.

if ! [ "$USER" = root ]
then
    echo "Run this script with sudo"
    exit 3
fi

# setting MYOS variable
MYOS=$(hostnamectl | awk '/Operating/ { print $3 }')
OSVERSION=$(hostnamectl | awk '/Operating/ { print $4 }')
if [ "$MYOS" = "Ubuntu" ]
then
    echo "RUNNING UBUNTU CONFIG"

    # Enable br_netfilter
    cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
br_netfilter
EOF

    sudo apt-get update && sudo apt-get install -y apt-transport-https curl gpg

    # Add Kubernetes apt repo for v1.33
    curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.33/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
    echo "deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.33/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list

    sudo apt-get update
    sudo apt-get install -y kubelet=1.33.0-1.1 kubeadm=1.33.0-1.1 kubectl=1.33.0-1.1
    sudo apt-mark hold kubelet kubeadm kubectl

    # disable swap
    swapoff -a
    sed -i 's/\/swap/#\/swap/' /etc/fstab
fi

# Set iptables bridging
cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sysctl --system

# Set containerd as runtime endpoint for crictl
sudo crictl config --set runtime-endpoint=unix:///run/containerd/containerd.sock

echo "After initializing the control node, follow instructions and use:
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.30.1/manifests/calico.yaml
to install the Calico plugin (control node only). On the worker nodes, use:
sudo kubeadm join ... to join"