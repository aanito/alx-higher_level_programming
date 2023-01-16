#!/bin/bash
# Write a Bash script that sends a request to a URL passed as an argument, and displays only the status code of the response.
curl -sX POST $1 -H "Content-Type: application/json" -d @$2 -L
