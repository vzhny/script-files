#!/bin/bash

GREEN='\033[1;32m';
RED='\033[1;31m';
NC='\033[0m';

if [ -z "$1" ]; then
  echo -e "Missing the name of the directory to create the app in!"
  exit 1
fi

directory=$1


echo -e "\n 📥 Cloning express-boiler from Github..\n"

git clone git@github.com\:vzhny\/express-boiler.git $directory && \

echo -e "\n 🧹 Removing the git repo and initializing a brand new one..\n"

cd $directory && \
rm -rf .git && \
git init && \
rm yarn.lock && \

echo -e "\n 🚀 Executing 'yarn install'\n"

yarn install && \

echo -e "\n Now, change into the project's directory using ${GREEN}cd $directory${NC}!\n"
echo -e " 📝 Then, execute the following:\n"
echo -e "\t${GREEN}yarn run dev${NC}\n" 
echo -e " to launch the app for development.\n"
echo -e "\t${GREEN}yarn run build${NC}\n"
echo -e " to build the app for production.\n" 
echo -e " Remember to update ${RED}package.json${NC} and ${RED}readme.md${NC} for the current project. Happy coding!"
