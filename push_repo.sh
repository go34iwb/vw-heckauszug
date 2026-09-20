#!/bin/bash
GITHUB_TOKEN=$(grep '^GITHUB_TOKEN=' /home/hermes/.hermes/.env | cut -d= -f2)
cd /home/hermes/.hermes/projects/20240913_vw-t6-heckauszug
git remote add origin https://go34iwb:$GITHUB_TOKEN@github.com/go34iwb/vw-heckauszug.git
git push -u origin gh-pages