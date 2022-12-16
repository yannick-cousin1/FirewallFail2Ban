#!/bin/bash

#Allow connexion port
iptables -I INPUT -p tcp --dport 21 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 21 -j ACCEPT


#Allow data ports (range is configured in proftpd config file)
iptables -I INPUT -p tcp --dport 49152:49162 -j ACCEPT
iptables -I OUTPUT -p tcp --sport 49152:49162 -j ACCEPT
