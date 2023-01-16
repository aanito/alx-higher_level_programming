#!/bin/bash
#Bash script for runnig a request url 
#only line with the length of th body of response to be included

curl -sI "$1" | grep 'Content-Length:' | cut -d' ' -f2
