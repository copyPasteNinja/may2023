#!/bin/bash 


if [ -d ".git" ]; then
    git status
    git add $1
    git commit -m "$2"
    git push
else
    echo "You arent in a repo"
    read -p "Enter your repo name: " repo
    repo_p=$(find ~/ -name may2023 -type d)
    if [ $repo_p != -z ]; then
        cd $repo_p
        git status
        git add $1
        git commit -m "$2"
        git push
    else
        echo "repo $repo does not exist"
    fi  
fi 
    