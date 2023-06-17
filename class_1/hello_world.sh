#!/bin/bash

# echo "Hello World $$" ## $$ is to print out the PID

echo "$1 is currently eating $2, at the same time drinking $3 -- All arguments: $@"

echo "$0 has input of $# arguments."

echo $?