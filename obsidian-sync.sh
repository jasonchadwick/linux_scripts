#!/bin/bash

cd /home/jchad/obsidian/

(
git add -A
echo "25" ;
echo "# Committing local changes" ; git commit -m "auto linux commit $(date +"%Y-%m-%d %T")"
commit=$?
echo "50" ;
echo "# Pulling from remote" ; git pull
pull_st=$?
push_st=0
if [ $commit == 0 ]; then
    echo "75" ;
    echo "# Pushing to remote" ; git push
    push_st=$?
fi
if [ $pull_st != 0 ] || [ $push_st != 0 ]; then
    echo "100"
    zenity --error --text="SYNC ERROR. Fix manually."
else
    echo "# Done."
    echo "99"; sleep 1
    echo "100"
fi
) |
zenity --progress \
  --title="Obsidian sync" \
  --text="# Adding local changes" \
  --percentage=0 \
  --auto-close
