#!/bin/bash
# backup certain things that would be nice to have if I reinstall Ubuntu (installed packages etc)

snap list > /home/jchad/backup/snap.txt

comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > /home/jchad/backup/apt-manually-installed.txt

crontab -l > /home/jchad/backup/crontab.txt

conda env export -n base --from-history > /home/jchad/backup/conda.txt
conda env export -n stocks --from-history >> /home/jchad/backup/conda.txt

dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ > /home/jchad/backup/keyboard-shortcuts.txt
# restore: dconf load /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/ < /home/jchad/backup/keyboard-shortcuts.txt

cp /home/jchad/.bashrc /home/jchad/backup/bashrc.txt

cp /etc/tlp.conf /home/jchad/backup/tlp.txt

gnome-extensions list > /home/jchad/backup/gnome-extensions.txt
