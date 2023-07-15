#!/bin/bash

sudo yum install net-tools

if [ -d ".git" ]; then
    git status

    ifconfig | grep broadcast | awk '{print $2}'

    git add $1
    git commit -m "$2"
    git push
else
    echo "You are not in a repo"
    read -p "Enter your repo name: " repo
    repo_p=$(find ~/ -name may2023 -type d)
    if [ $repo_p != -z ]; then
        cd $repo_p
        ls -la
    else
        echo "repo $repo does not exist"
    fi
fi