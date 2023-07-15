#!/bin/bash 


repo_name=$(curl -X GET -H "Accept: application/vnd.github+json" https://api.github.com/repos/copypasteninja/may2023 | jq -r '.name')
echo $repo_name
