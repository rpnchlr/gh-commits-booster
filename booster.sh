#!/bin/bash

#variables
wait=2
number=10
count=1
default_filename="test"
default_reponame="test"

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
#if ! then it will create a new repo, Initialize git, add remote and do commits
checkGit=$(find . -type d -name ".git")
if [[ "$checkGit" = "./.git" ]]; then
  echo "It's already a git repo. writing changes!!" && sleep 2
  echo " "

  #creating dummy file to write changes
  read -p "What do you want to name the dummy file, leave empty if you want to use default : " filename
  filename=${filename:-$default_filename}
  echo " "

  echo "Creating dummy file : $filename".txt && sleep 2
  touch ./"$reponame"/"$filename".txt
  echo "created $filename".txt && sleep 2

  echo " "

  echo "Just sit back and chill while we're making commits." && sleep 2

  while [[ count -le number ]]; do
    sleep "$wait"
    echo "$count" >>"$filename".txt
    git add .
    git commit -m "Commit no. $count"
    ((count++))
  done

  echo " "

  echo "All commits have been made, now you can push the changes."
  echo "git push -u origin main"
else
  echo "It's not a git repo. Creating One..." && sleep 2

  echo " "

  read -p "Enter your gh username : " un
  echo "your gh username is $un" && sleep 2

  echo " "

  read -p "What do you want to name this repository, leave empty if you want to use default : " reponame
  reponame=${reponame:-$default_reponame}
  echo "your repo name is $reponame" && sleep 2

  echo " "

  echo "create a private repo on github named : $reponame"
  echo "while we do the rest..."
  sleep 2

  echo " "

  echo "Creating a new directory..." && sleep 2
  mkdir $reponame

  echo " "

  echo "Intializing Git repository..." && sleep 2
  git init $reponame && sleep 2

  echo " "

  echo "Adding remote repository..." && sleep 2
  git -C ./"$reponame" remote add origin https://github.com/"$un"/"$reponame".git
  echo "Added remote repo." && sleep 2

  echo " "

  #creating dummy file to write changes
  read -p "What do you want to name the dummy file, leave empty if you want to use default : " filename
  filename=${filename:-$default_filename}
  echo " "

  echo "Creating dummy file : $filename".txt && sleep 2
  touch ./"$reponame"/"$filename".txt
  echo "created $filename".txt && sleep 2

  echo " "

  echo "Just sit back and chill while we're making commits." && sleep 2

  echo " "

  while [[ count -le number ]]; do
    sleep "$wait"
    echo "$count" >>"./$reponame/$filename".txt
    git -C ./"$reponame" add .
    git -C ./"$reponame" commit -m "Commit no. $count"
    ((count++))
  done

  echo " "
  echo "All commits have been made, now cd into the created directory and push the changes."
  echo "REMINDER: create a private gh repo before pushing "
  echo "cd $reponame"
  echo "git push -u origin main"
fi
