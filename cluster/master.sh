# Init cluster
kubeadm init

# Setup Weave networking
kubectl apply -f https://git.io/weave-kube-1.6
