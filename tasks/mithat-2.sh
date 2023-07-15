#!/bin/bash

counter=5

while [ $counter -ge 1 ]
do
    echo "Countdown has commenced"
    echo "Countdown $counter"
    counter=$((counter - 1))
done

    echo "Houston! We have liftoff"

function dwnloadgit1 {
    echo "Installing net-tools..."
    sudo yum install -y net-tools

    echo "Updating rpm..."
    sudo yum update -y rpm

    echo "Updating system..."
    sudo yum update -y

    echo "Installing git..."
    sudo yum install -y git

    echo "Installing wget..."
    sudo yum install -y wget

    echo "Installing curl..."
    sudo yum install -y curl

    echo "Installing python..."
    sudo yum install -y python3
}

dwnloadgit1_output=$(dwnloadgit1)  ### for Executing the function and get its output

if [ -n "$dwnloadgit1_output" ]; then
    echo "Git, python, curl, net-tools, and wget have been downloaded. Updates have been completed. Beep-Bop!"
else
    echo "Something has gone wrong. Please check the code. Beep-boop!"
fi

tasks=("for_loop" "while_loop" "function" "if and else condition")

for task in "${tasks[@]}"
do
    echo "For this homework, i have used $task"
done

commands=("git --version" "wget --version" "python3 --version" "curl --version" "netstat --version" "rpm --version")

for command in "${commands[@]}"; do
    version=$(eval "$command" | head -n 1)
    echo "$version"
done


### Tried on different server but had to download everything. Tried here everything worked except python install for some reason.
### Error: Unable to find a match: python
### [@] Treats each task(element) as a separate entity
### eval is dangerous? links the arguments into a single st