#!/bin/bash

#Allow to serve http connexions
iptables -I INPUT -p tcp --dport 80 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 80 -j ACCEPT

#Allow to serve https connexions
iptables -I INPUT -p tcp --dport 443 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 443 -j ACCEPT
