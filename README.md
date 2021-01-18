# Ubuntu VM with Concourse CI/JenkisX

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
