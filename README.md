# GH-COMMITS-BOOSTER
This is a bash script for boosting or multiplying commits on github. This is just a fun experiment to check my bash learning skills. Kindly, not use this script to manipulate or multiply your github commits.

This script can be used in unix, linux and mac based systems. 

## Installation?
```
git clone https://github.com/rpnchlr/gh-commits-booster.git

cd git-commits-booster
```

## How to use this Script?
1. After Cloning this repo, cp this script to a private repo, or you can clone this repo into your private repo or just fork it and clone it.

To copy this script into some other directory and also change the cwd.
```
cp booster.sh ./[DIR_PATH] && cd ./[DIR_PATH]
```
2. Make the script executable
```
chmod +x booster.sh
```
3. run the script
```
./booster.sh
    OR
sh booster.sh
    OR
bash booster.sh
```

4. After some time you'll see n number of commits, you can push them and it'll be shown in your github.
```
git push -u origin main
```

## NOTE 
1. This is an infinitely running script until you manually stop/terminate it.
```
CTRL+C
```
2. By default, this script adds and commits changes in every 2 seconds, if you want to change the duration. Use the flag "-t"
```
./booster.sh -t n
```
here, n could be any number of waiting time you want this script to rerun the loop. n is in seconds here.

3. For Windows user, Use git bash as the terminal to use this script. Installation and usage will be the same.

### Warning
This script is commiting at its own and multiplying fake github commits, using it too much may flag your account as a bot, as it violates github rules and regulations, and may result in ban from github.