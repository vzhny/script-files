#!/bin/bash

echo -e "\n 👉  Select your emoji from the following list:\n"
echo -e "\t 🎉  (i)nitial"
echo -e "\t 📝  (n)ew"
echo -e "\t 🔨  (r)efactor"
echo -e "\t 🎨  (s)tyles"
echo -e "\t 🔥  (d)elete"
echo -e "\t 🚚  (m)ove"
echo -e "\t 📖  d(o)c"
echo -e "\t 🐛  (b)ugfix"
echo -e "\t ➕  (a)dd"
echo -e "\t ➖  r(e)move"
echo -e "\t 👷  (t)ests"

emoji=😮

echo -e "\n"

read -p "Selection: " emoji_selection

case $emoji_selection in
  i ) emoji=🎉;;
  n ) emoji=📝;;
  r ) emoji=🔨;;
  s ) emoji=🎨;;
  d ) emoji=🔥;;
  m ) emoji=🚚;;
  o ) emoji=📖;;
  b ) emoji=🐛;;
  a ) emoji=➕;;
  e ) emoji=➖;;
  t ) emoji=👷;;
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

