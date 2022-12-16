#! /bin/bash

iptables -I OUTPUT -p tcp --dport 587 -j ACCEPT
