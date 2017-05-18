#!/bin/sh
set -e

# clean up yum history
sudo yum -y clean all
sudo yum history new
sudo truncate -c -s 0 /var/log/yum.log

# remove network device specific configuration
sudo rm -f /etc/udev/rules.d/70-persistent-net.rules
sudo touch /etc/udev/rules.d/70-persistent-net.rules

# remove uuid and mac address
sudo sed -i '/UUID/d' /etc/sysconfig/network-scripts/ifcfg-eth0
sudo sed -i '/HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-eth0

# remove machine-id 
sudo rm -f /etc/machine-id
sudo touch /etc/machine-id




