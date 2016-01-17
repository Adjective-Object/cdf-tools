#/bin/bash

GITHUB_USERNAME="Adjective-object"

DIR=`dirname $0`

wget https://github.com/users/$GITHUB_USERNAME/contributions -qO- |\
    python $DIR/github_streak_check.py "$@"
