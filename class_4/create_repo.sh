#!/bin/bash
## GET, PUT, POST, DELETE

curl -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  https://api.github.com/user/repos \
  -d '{"name":"Hello-World","description":"This is your first repo via api!","homepage":"https://github.com","private":true}'

