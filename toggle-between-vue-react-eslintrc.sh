#!/bin/bash

cd ~

BLUE='\033[1;34m';
GREEN='\033[1;32m';
NC='\033[0m';

if [ -z "$1" ]; then
  if [ -e .eslintrc_react ]; then
    # Currently using Vue linting, perform renaming for React linting
    mv .eslintrc .eslintrc_vue && \
    mv .eslintrc_react .eslintrc && \

    echo -e " 🔧🔨🔩 Now ready to lint ${BLUE}React${NC} files!";
  else
    # Currently using React linting, perform renaming for Vue linting
    mv .eslintrc .eslintrc_react && \
    mv .eslintrc_vue .eslintrc && \

    echo -e " 🔧🔨🔩 Now ready to lint ${GREEN}Vue${NC} files!";
  fi
else
  if [ "$1" == "check" ]; then
    if [ -e .eslintrc_react ]; then
      echo -e " 🛠  Currently linting ${GREEN}Vue${NC} files!";
    else
      echo -e " 🛠  Currently linting ${BLUE}React${NC} files!";
    fi
  fi
fi
