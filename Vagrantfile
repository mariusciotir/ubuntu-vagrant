# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "public_network",ip: "192.168.1.105", bridge: "Intel(R) Wireless-AC 9260 160MHz"
  config.vm.network :private_network, ip: "192.168.15.11", virtualbox__intnet: "natnet1"
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.hostname = "ubuntu2"
  #config.vm.synced_folder = true
  config.ssh.insert_key = false
  config.ssh.private_key_path = "C:/Users/mciotir/.vagrant.d/insecure_private_key"
  config.vm.provision "shell", inline: "groupadd docker && usermod -aG docker vagrant"
  config.vm.provision "shell", path: "concourse.sh"

  config.vm.provider :virtualbox do |v|
    v.memory = 3072
	v.cpus = 2
	
  end

end
