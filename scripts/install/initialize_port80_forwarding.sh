#!/bin/bash

# Log initialization status
echo "Initializing port 80 forwarding..."

# Initialize port 80 forwarding
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8000
sudo bash -c "iptables-save > /etc/iptables.ipv4.nat"
