# install.sh
#!/bin/sh
 
# Install kubernetes and set config
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
 
mkdir ${HOME}/.kube
cp scripts/config ${HOME}/.kube/config
 
# Fill out missing params in kubectl config file
#kubectl config set clusters.kubernetes-kube-group-e1ea0b.certificate-authority-data "$KUBE_CLUSTER_CERTIFICATE"
#kubectl config set users.kubernetes-kube-group-e1ea0b-admin.client-certificate-data "$KUBE_CLIENT_CERTIFICATE"
#kubectl config set users.kubernetes-kube-group-e1ea0b-admin.client-key-data "$KUBE_CLIENT_KEY"
