#!/bin/bash

# check the input thing
if [ $# -lt 1 ]; then
    echo "no username supplied"
    exit 1
fi

# contributions
contributions=`wget https://github.com/users/$1/contributions -qO-`

# color matches
today="$(date +'%Y-%m-%d')"
matches=`echo $contributions | grep -oz '<rect[^\>]*data-date="'$today'"[^\>]*>' --`
IFS=$'\n' read -rd '' -a matcharr <<<"$matches"
colormatch=`echo ${matcharr[-1]} | grep -oz 'fill="#[a-fA-F0-9]*"'`

# check the output
if [ $colormatch = 'fill="#eeeeee"' ]; then
    if [ $# -eq 1 ]; then
        echo "no commits today"
        exit 1
    else 
        echo ${@:2}
        exit 1
    fi
fi

