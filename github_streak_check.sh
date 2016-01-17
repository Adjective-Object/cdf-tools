#/bin/bash

GITHUB_USERNAME="Adjective-object"

wget https://github.com/users/$GITHUB_USERNAME/contributions -qO- |\
    python github_streak_check.py "$@"
