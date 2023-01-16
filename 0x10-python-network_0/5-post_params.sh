#!/bin/bash
#Post request with a data and subject line
curl -sX POST -d "email=test@gmail.com&subject=I will always be here for PLD" "$1"
