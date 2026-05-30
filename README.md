# GH-COMMITS-BOOSTER
This is a bash script for boosting or multiplying commits on github. This is just a fun experiment to check my bash learning skills. Kindly, not use this script to manipulate or multiply your github commits.

This script can be used in unix, linux, mac and windows systems. 

## Installation?
```
git clone https://github.com/rpnchlr/gh-commits-booster.git

cd git-commits-booster
```

## How to use this Script?
1. After Cloning this repo, cp this script to a private repo, or you can clone this repo into your private repo or just fork it and clone it. 

    To copy this script into some other directory and also change the cwd.
        
```
cp booster.sh ../[DIR_PATH] && cd ../[DIR_PATH]
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
1. By default, this script adds and commits changes in every 2 seconds and add 10 commits per run, if you want to change the defaults.

    - Use the flag "-t", to change the duration of every commit. Here, p could be any number of waiting time you want this script to rerun the loop. p is in seconds here.
    
        ```
        ./booster.sh -t p
        ```
    - Use the flag "-n", to change the no of commits done before the script stops.  Here, p could be any number of commits you want this script to do on a run.

    
        ```
        ./booster.sh -n q
        ```
    - You can also use both flags together. Here, p and q be any intergers.

    
        ```
        ./booster.sh -t p -n q
        ```
2. For Windows user, Use git bash as the terminal to use this script. Installation and usage will be the same.

### Warning
This script make fake commits at its own and multiplies fake github commits, using it too much may flag your account as a bot, as it violates github rules and regulations, and may result in ban from github.