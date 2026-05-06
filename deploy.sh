#!/bin/bash
set -e

REPO="https://github.com/bannydurgos/DBT_DIARY.git"

if [ ! -d ".git" ]; then
  git init
  git branch -M main
fi

if ! git remote get-url origin &> /dev/null; then
  git remote add origin "$REPO"
fi

git add -A
git commit -m "Update $(date '+%Y-%m-%d %H:%M')"
git push -u origin main

echo "Done! Live at https://bannydurgos.github.io/DBT_DIARY/"
