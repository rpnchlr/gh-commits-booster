#!/bin/bash

wait=2
number=10

while getopts "t:n:" opt; do
  case $opt in
  t)
    wait="$OPTARG"
    ;;
  n)
    number="$OPTARG"
    ;;
  \?)
    echo "Invalid options"
    exit 1
    ;;
  esac
done

#check if its alr a git repo or not
checkGit=$(find . -type d -name ".git")
if [[ "$checkGit" = "./.git" ]]; then
  echo "It's already a git repo. writing changes!!"
  echo "Just sit back and chill while we're making commits."
else
  git init
  echo "Initialized a git repo. writing changes!!"
  echo "Just sit back and chill while we're making commits."
fi

#creating test file to write changes
touch test.txt

count=1
while [[ count -le number ]]; do
  sleep "$wait"
  echo "$count" >>test.txt
  git add .
  git commit -m "Commit no. $count"
  ((count++))
done
