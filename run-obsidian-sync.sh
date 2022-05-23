#!/bin/bash

/home/jchad/scripts/obsidian-personal-sync.sh
env BAMF_DESKTOP_FILE_HINT=/var/lib/snapd/desktop/applications/obsidian_obsidian.desktop /snap/bin/obsidian %U
/home/jchad/scripts/obsidian-personal-sync.sh