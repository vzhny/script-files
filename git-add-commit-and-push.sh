#!/bin/bash

if [ -z "$1" ]; then
  echo -e "Missing the name of the branch to push to."
  exit 1
fi

if [ -z "$2" ]; then
  echo -e "Missing the commit message after 'gitaio'."
  exit 1
fi

branch_name=$1
commit_msg=$2

echo -e " 📥  Adding all untracked files"

git add . && \
git add -u && \

echo -e " 📝  Committing changes\n"

now="$(date +'%m/%d')"

git commit -m "$commit_msg | $now" && \

if [ -z "$(git remote)" ]; then
  echo -e "\n 😬  No git remote available!"
  exit 1
fi

echo -e "\n 🚀  Pushing changes to $branch_name branch\n"

git push -u origin $branch_name 

