echo "{ \"iptables\": false }" > /etc/docker/daemon.json

sudo sed -i -e 's/DEFAULT_FORWARD_POLICY="DROP"/DEFAULT_FORWARD_POLICY="ACCEPT"/g' /etc/default/ufw
sudo ufw reload

sudo iptables -t nat -A POSTROUTING ! -o docker0 -s 172.17.0.0/16 -j MASQUERADE

sysctl net.ipv4.conf.all.forwarding=1
sudo iptables -P FORWARD ACCEPT