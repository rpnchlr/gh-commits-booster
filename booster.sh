#!/bin/bash

wait=2

while getopts "t:" opt; do
  case $opt in
  t)
    wait="$OPTARG"
    ;;
  \?)
    echo "Invalid options"
    exit 1
    ;;
  esac
done

touch test.txt

count=1
while [[ true ]]; do
  sleep "$wait"
  echo "$count" >> test.txt
  git add .
  git commit -m "Commit no. $count"
  ((count++))
done
