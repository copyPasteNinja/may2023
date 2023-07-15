#!/bin/bash

num_repos="$(curl -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_TOKEN"\
  https://api.github.com/users/copypasteninja/repos | jq length)"


all_repos="$(curl -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $GITHUB_TOKEN" \
    https://api.github.com/users/copypasteninja/repos)"


if [ "$num_repos" -le 1 ]; then
    echo "You only have $num_repos"
else
    for repo in $(seq 0 $num_repos); do
        name=$(echo $all_repos | jq -r ".[$repo].name")
        if [[ $name = "$1" ]]; then
            echo "your repo exists $name"
        fi
    done
fi

