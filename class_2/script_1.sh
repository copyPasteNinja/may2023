#!/bin/bash 

sudo yum update rpm -y; sudo yum update -y 

sudo yum install git -y

git config --global user.name "Abdul Sharif"
git config --global user.email "abdugofir00@gmail.com"

git clone https://github.com/copyPasteNinja/may2023.git /root/may2023
