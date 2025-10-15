#!/bin/bash
# Set Exit of Command Error and set a trap to send a notification
set -e 
trap 'notify-send "Obsidian Script Failure"' ERR

LOCATION = "" # Enter your Obsidian Location
COMMIT_MSG = "" # Enter Your Commit Message

# Reach Obsidian Directory
cd $LOCATION
# Do a Git Pull
git pull
echo $(date) >> ~/Documents/Logs/obsidian-sync.log
if [ -n "$(git ls-files --unmerged)" ]; then
echo "Merge Conflict" >> obsidian-sync.log
notify-send "Obsidian-Sync Merge Conflict"
else
echo "Git Pull Successfull" >> ~/Documents/Logs/obsidian-sync.log
fi
# Do a Git Status
if [ -z "$(git status --porcelain)" ]; then
echo "Nothing to push" >> ~/Documents/Logs/obsidian-sync.log
else
git add .
git commit -m "$COMMIT_MSG"
git push
fi
