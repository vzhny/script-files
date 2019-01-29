#!/bin/bash

if [ -z "$1" ]; then
  echo -e "Missing the commit message after 'gac'."
  exit 1
fi

commit_msg=$1

echo -e " 📥  Adding all untracked files"

git add . && \
git add -u && \

echo -e " 📝  Committing changes\n"

now="$(date +'%m/%d')"

git commit -m "$commit_msg | $now" && \

echo -e "\n 🚀  All changes are now committed, either push or continue coding!\n"

