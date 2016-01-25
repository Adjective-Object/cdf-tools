# github streak checker
simple bash script to check if someone has made a public commit
on github today.

depends on `grep`, `read`, `echo`

usage: `github_streak_check.py <username> <output message>`

## Crontab Installation
run `crontab -e` in your shell, and add the following lines to your crontab

```
00 18 * * * /<path_to_github_streak>/github_streak_check.sh <username> "6 hours to commit"
00 19 * * * /<path_to_github_streak>/github_streak_check.sh <username> "5 hours to commit"
00 20 * * * /<path_to_github_streak>/github_streak_check.sh <username> "4 hours to commit"
00 21 * * * /<path_to_github_streak>/github_streak_check.sh <username> "3 hours to commit"
00 22 * * * /<path_to_github_streak>/github_streak_check.sh <username> "2 hours to commit"
00 23 * * * /<path_to_github_streak>/github_streak_check.sh <username> "1 hour to commit"
30 23 * * * /<path_to_github_streak>/github_streak_check.sh <username> "30 min. to commit"
45 23 * * * /<path_to_github_streak>/github_streak_check.sh <username> "15 min. to commit"
0  0  * * * /<path_to_github_streak>/github_streak_check.sh <username> "your streak is broken!"
```

You will be emailed the specified message by crontab if you have not committed
