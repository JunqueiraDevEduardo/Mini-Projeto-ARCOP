ip addr
dhcp client eth0@if9
dhclient eth0@if9
ip addr add 10.0.3.100/24 dev eth0
ip route add default via 10.0.3.1
ip addr
ping -c 3 8.8.8.8
exit
ping -c 3 8.8.8.8
ip addr
exit
ip addr
ping -c 3 8.8.8.8
dnf install -y httpd
echo "<h1>Projeto 8 - LXC Container HTTP Server</h1><p>Container criado sem template</p>" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd
systemctl status httpd
ip addr
exit
cat > /etc/systemd/network/eth0.network << 'EOF' 

 [Match] 

 

 Name=eth0 

 [Network] 

Address=10.0.3.100/24 

 Gateway=10.0.3.1 

 DNS=8.8.8.8 

 EOF 


cat > /etc/systemd/network/eth0.network << 'EOF'
[Match]
Name=eth0

[Network]
Address=10.0.3.100/24
Gateway=10.0.3.1
DNS=8.8.8.8
EOF

systemctl enable systemd-networkd
sudo systemctl enable systemd-networkd
systemctl start systemd-networkd
ip addr
cat > /etc/systemd/system/configure-network.service << 'EOF'
[Unit]
Description=Configure Network at Boot
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/configure-network.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

cat > /usr/local/bin/configure-network.sh << 'EOF'
#!/bin/bash
ip addr add 10.0.3.100/24 dev eth0 2>/dev/null || true
ip route add default via 10.0.3.1 2>/dev/null || true
EOF

chmod +x /usr/local/bin/configure-network.sh
systemctl enable configure-network.service
systemctl status configure-network.service
exit
ip addr
ping -c 3 8.8.8.8
exit
ping -c 3 8.8.8.8pwd
exit
ping -c 3 8.8.8.8
exit
exit
