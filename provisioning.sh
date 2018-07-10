#!/bin/bash
echo 'hello'
apt-get update
apt-get upgrade
apt-get -y install git-core

# Install sublimetext
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get -y install sublime-text

# Install cinnamon desktop
apt install -y cinnamon-desktop-environment lightdm

# Install Ansible
apt install -y software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt update
apt -y install ansible

# Install Docker
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get -y install docker-ce
apt-get -y install docker-compose

apt-get -y install python-pip
apt-get -y install libxml2-dev libxslt1-dev

apt-get -y install vim
