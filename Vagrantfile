# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos/7"
  config.vm.network "public_network",ip: "192.168.1.105", bridge: "Intel(R) Wireless-AC 9260 160MHz"
  config.vm.network :private_network, ip: "192.168.15.11", virtualbox__intnet: "natnet1"
  config.vm.hostname = "openshift36"
  config.ssh.insert_key = true

  config.vm.provider :virtualbox do |v|
    v.memory = 3072
	v.cpus = 2
  end

end
