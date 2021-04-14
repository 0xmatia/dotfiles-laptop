#!/bin/bash

iface="ens33"
echo IP: $(/sbin/ip -o -4 addr list $iface | awk '{print $4}' | cut -d/ -f1)
