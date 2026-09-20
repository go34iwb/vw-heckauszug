#!/bin/bash
GITHUB_TOKEN=$(grep '^GITHUB_TOKEN=' /home/hermes/.hermes/.env | cut -d= -f2)
curl -s -H "Authorization: token $GITHUB_TOKEN" https://api.github.com/repositories/1369316401/pages/builds/latest