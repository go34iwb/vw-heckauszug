#!/bin/bash
GITHUB_TOKEN=$(grep '^GITHUB_TOKEN=' /home/hermes/.hermes/.env | cut -d= -f2)
curl -X POST -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/go34iwb/vw-heckauszug/pages -d '{"source":{"branch":"gh-pages","path":"/"}}'