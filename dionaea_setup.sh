#!/bin/bash
apt-get update
apt-get dist-upgrade

apt-get install software-properties-common
add-apt-repository ppa:honeynet/nightly

apt-get update
apt-get install dionaea

rm /opt/dionaea/etc/dionaea/services-enabled/smb.yaml
mv smb.yaml /opt/dionaea/etc/dionaea/services-enabled/smb.yaml

service dionaea restart
