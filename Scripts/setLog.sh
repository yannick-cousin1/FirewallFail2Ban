#!/bin/bash

iptables -I INPUT -p tcp -j LOG
