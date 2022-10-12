echo "*******Preparing OS********"
sudo yum -y install sshpass
sudo sshpass -p "vagrant" ssh -o StrictHostKeyChecking=no vagrant@192.168.42.110 sudo cat /var/lib/rancher/k3s/server/node-token > ./node-token
export K3S_KUBECONFIG_MODE="644"
export K3S_URL="https://192.168.42.110:6443"
export K3S_TOKEN="$(cat ./node-token)"
export INSTALL_K3S_EXEC="--flannel-iface=eth1"
echo "*******Installing k3s agent*******"
curl -sfL https://get.k3s.io | sh -
echo "*******k3s agent installed*******"

