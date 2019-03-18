#!/bin/bash

read -p "Enter commit message: " commit_msg

now="$(date +'%m/%d')"

git commit -m "$commit_msg | $now" && \

echo -e "\n 🚀  All changes are now committed, either push or continue coding!\n"

