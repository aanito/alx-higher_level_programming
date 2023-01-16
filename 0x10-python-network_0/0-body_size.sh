#!/bin/bash
#Bash script for runnig a request url 
#only line with the length of th body of response to be included

curl $1 | sed -n 2p 
