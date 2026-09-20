#!/bin/bash
GITHUB_TOKEN=$(grep '^GITHUB_TOKEN=' /home/hermes/.hermes/.env | cut -d= -f2)
curl -X POST -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3+json" https://api.github.com/user/repos -d '{"name":"vw-heckauszug","description":"VW T6 Heckauszug - Modularer Heckauszug mit 3 Modulen (Euroboxen + Kühlbox)","private":false,"has_pages":true}'