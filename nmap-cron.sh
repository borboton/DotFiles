#!/bin/bash
hosts=$(nmap -T4 -F -A 192.168.1.1/24)
DATE=$(date)


if [[ "$hosts < 2"]] ; then 

    sleep 2s
      
