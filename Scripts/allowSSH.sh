#!/bin/bash

#Launch with privileges

iptables -I INPUT -p tcp --dport 42 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 42 -j ACCEPT
