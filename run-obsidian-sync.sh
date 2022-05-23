#!/bin/bash

/home/jchad/scripts/obsidian-personal-sync.sh
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %u @@
/home/jchad/scripts/obsidian-personal-sync.sh