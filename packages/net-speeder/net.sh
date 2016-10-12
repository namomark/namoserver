yum install libnet libpcap libnet-devel libpcap-devel
cd /home/namomark/
wget https://github.com/snooda/net-speeder/archive/master.zip
unzip master.zip
rm -f master.zip
cd net-speeder-master/
sh build.sh
echo 'nohup /home/namomark/net-speeder-master/net_speeder venet0 "ip" >/dev/null 2>&1 &' >> /etc/rc.local


