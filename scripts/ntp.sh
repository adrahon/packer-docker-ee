#!/bin/sh
set -e

# Install and enable ntpd
sudo yum -y install ntp
sudo systemctl enable ntpd
