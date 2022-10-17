sudo yum -y remove docker docker-client  docker-client-latest  docker-common  docker-latest  docker-latest-logrotate  docker-logrotate  docker-engine
sudo yum -y install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl start docker.service

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 ./kubectl /usr/local/bin/kubectl
export PATH=$PATH:/usr/local/bin
curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
# k3d cluster create p3Cluster

# kubectl create namespace argocd
# kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
# kubectl port-forward --address 0.0.0.0 svc/argocd-server -n argocd 8080:443

