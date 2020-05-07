# Open Shift 3.6 cluster infrastructure

## Prereq
- Virtualbox
- Vagrant
- The VM should be started behind NAT, othwerwise the VPN will filter the connection (when using bridge)

## Start cluster
- with service catalog 
- preserve data
- preserve etcd
- hostname - OCP wll always redirect to its default interface IP. Set it to hostname and add the hostname in /etc/hosts to solve all ips. This should
also solve any certificate issue
  * ex. when default 127.0.0.1, when accessing 192.168.15.11 from browser, the oc will redirect to 127.0.0.1 

```
oc cluster up --service-catalog=true --host-data-dir='/home/vagrant/cluster/data' --host-config-dir='/home/vagrant/cluster' --public-hostname='openshift36' --routing-suffix='nip.io'
```