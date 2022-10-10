echo "*******Preparing OS********"
sudo sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
export K3S_KUBECONFIG_MODE="644"
export INSTALL_K3S_EXEC="--flannel-iface=eth1"

echo "*******Installing k3s server*******"
curl -sfL https://get.k3s.io | sh -
echo "*******k3s server installed*******"

