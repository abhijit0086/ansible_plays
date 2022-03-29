sudo kubeadm reset -f && 
 sudo systemctl stop kubelet && 
 sudo systemctl stop docker && 
 sudo rm -rf /var/lib/cni/ && 
 sudo rm -rf /var/lib/kubelet/* && 
 sudo rm -rf /etc/cni/ && 
 sudo ifconfig cni0 down && 
 sudo ifconfig flannel.1 down && 
 sudo ifconfig docker0 down && 
 sudo ip link delete cni0 && 
 sudo ip link delete flannel.1

sudo ifconfig docker0 up
sudo systemctl start docker

# hard reset
# ~~~~~~~~~~~~~~~~~~~~~~~~~~
# kubeadm reset
# sudo apt-get purge kubeadm kubectl kubelet kubernetes-cni kube*   
# sudo apt-get autoremove  
# sudo rm -rf ~/.kube