#!/bin/bash
#List all the possible curl options or HTTP methods with hte URL

curl -sI "$1" | grep 'Allow:' | sed -ne 's/^Allow: //p'
