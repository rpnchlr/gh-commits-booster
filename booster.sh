#!/bin/bash

count=1
while [[ true ]]; do
  git add .
  git commit -m "initial commit $count"
  ((count++))
done
