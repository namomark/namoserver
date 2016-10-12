#!/bin/bash

yum install python-pip
pip install shadowsocks

cp ss.json /etc/shadowsocks.json
echo "ssserver -c /etc/shadowsocks.json" > /etc/rc.local

ssserver -c /etc/shadowsocks.json

firewall-cmd --zone=public --add-port=8929/tcp --permanent
firewall-cmd --zone=public --add-port=8929/udp --permanent
firewall-cmd --reload
