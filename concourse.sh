#!/bin/bash
#Concourse setup

# install docker 
sudo apt-get -y update 
sudo apt-get -y install     apt-transport-https     ca-certificates     curl     gnupg-agent     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"

sudo apt-get -y install docker-ce docker-ce-cli containerd.io 
sudo apt -y install docker-compose

#sudo groupadd docker
#sudo usermod -aG docker $USER

#sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
#sudo chmod g+rwx "$HOME/.docker" -R     

#get concourse docker-compose.yml
mkdir -p ~/repos/concourse/
cd ~/repos/concourse/
curl -OL https://raw.githubusercontent.com/starkandwayne/concourse-tutorial/master/docker-compose.yml   

#run it 
docker-compose up -d

#get the  
curl -OL https://github.com/concourse/concourse/releases/download/v6.7.3/fly-6.7.3-linux-amd64.tgz
sudo tar -zxf fly-*.tgz -C /usr/local/bin
fly --target tutorial login --concourse-url http://127.0.0.1:8080 -u admin -p admin
fly --target tutorial sync
