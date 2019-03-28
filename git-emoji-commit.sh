#!/bin/bash

echo -e "\n 👉  Select your emoji from the following list:\n"
echo -e "\t 🎉  (i)nitial commit"
echo -e "\t 📝  (n)ew code added"
echo -e "\t 🔨  (r)efactored code"
echo -e "\t 🎨  (s)tyles added/edited"
echo -e "\t 🔥  (d)elete code/files"
echo -e "\t 🚚  (m)ove code/files"
echo -e "\t 📖  d(o)cs updated/added"
echo -e "\t 🐛  (b)ugfix implemented"
echo -e "\t ➕  (a)dd dependency"
echo -e "\t ➖  r(e)move dependency"
echo -e "\t 🚧  (t)ests added"

emoji=😮

echo -e "\n"

read -p "Selection: " emoji_selection

case $emoji_selection in
  i|I ) emoji=🎉;;
  n|N ) emoji=📝;;
  r|R ) emoji=🔨;;
  s|S ) emoji=🎨;;
  d|D ) emoji=🔥;;
  m|M ) emoji=🚚;;
  o|O ) emoji=📖;;
  b|B ) emoji=🐛;;
  a|A ) emoji=➕;;
  e|E ) emoji=➖;;
  t|T ) emoji=🚧;;
  * ) 
    echo -e "$emoji No valid emoji was selected. Exiting."
    exit 1
    ;;

esac

read -p "Enter commit message: " commit_msg

now="$(date +'%m/%d')"

echo -e "\n"

git commit -m "$emoji $commit_msg | $now"

echo -e "\n\n 🚀  All changes are now committed, either push or continue coding!\n"

