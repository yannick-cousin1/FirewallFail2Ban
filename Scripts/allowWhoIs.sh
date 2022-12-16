#!/bin/bash

iptables -I OUTPUT -p tcp --dport 43 -j ACCEPT
