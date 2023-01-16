#!/bin/bash
#Bash script for runnig a request url 
#only line with the length of th body of response to be included

curl $1
cat /dev/stdout | sed -n 2p | cut -d' ' -f2
