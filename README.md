# Ubuntu VM with Concourse CI/JenkisX and ELK/EFK

due to stupid WSL 2 which does not work if port 53 is used, so you can not use Docker and VitualBox at the same time

## Prereq
- Virtualbox
- Vagrant
- The VM should be started behind NAT, othwerwise the VPN will filter the connection (when using bridge)
- the ssh key needs to be replaced in Vagrantfile
## Start

```shell
vagrant up
```

concourse.sh - deploy the container for Concourse

jenkinsx.sh - to do

##
