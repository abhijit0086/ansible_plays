01 Creating User Account.

02 Install Kubernetes & Docker Packages.

03 Setting up k8s master
--prompt
"pod_network_cidr": 10.10.0.0/16

"k8s_master_ip": 192.168.0.11

optional..

"pod_network_manifest_file": https://cloud.weave.works/k8s/net

 "Enter the RBAC manifest file": https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/hosted/rbac-kdd.yaml


---
reset command for k8s
```
sudo kubeadm reset -f
sudo rm -rf /etc/cni /etc/kubernetes /var/lib/dockershim /var/lib/etcd /var/lib/kubelet /var/run/kubernetes ~/.kube/*
iptables -F && iptables -X
iptables -t nat -F && iptables -t nat -X
iptables -t raw -F && iptables -t raw -X
iptables -t mangle -F && iptables -t mangle -X
sudo systemctl daemon-reload
sudo systemctl restart docker
```