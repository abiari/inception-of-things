echo "*******Preparing OS********"
export K3S_KUBECONFIG_MODE="644"
echo "*******Installing k3s server*******"
curl -sfL https://get.k3s.io | sh -
echo "*******k3s server installed*******"

