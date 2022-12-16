#!/bin/bash

# Authorise responses
iptables -I INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

#Authorise DNS requests
iptables -I OUTPUT -p udp --dport 53 -j ACCEPT

#Authorise HTTP requests
iptables -I OUTPUT -p tcp --dport 80 -j ACCEPT

