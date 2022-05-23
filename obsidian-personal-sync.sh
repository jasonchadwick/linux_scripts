#!/bin/bash

cd /home/jchad/obsidian/personal/
git pull
git add -A
git commit -m "auto linux commit $(date +"%Y-%m-%d %T")"
git push