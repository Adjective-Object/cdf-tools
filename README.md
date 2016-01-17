# CDF github streak checker
simple github streak checker for use on the UofT CDF server.

Some functionality moved out of python script and into a bash script
to get around the lack of proper https support on the python version supplied
by CDF.

## Usage
First, change the script to use your github username by setting 
`GITHUB USERNAME` in github_streak_check to whatver account you want to monitor

Install the script in your crontab like so:
iun `crontab -e` in your shell, and add the following lines to your crontab

```
00 18 * * * /<path_to_github_streak>/github_streak_check.sh "6 hours to commit"
00 19 * * * /<path_to_github_streak>/github_streak_check.sh "5 hours to commit"
00 20 * * * /<path_to_github_streak>/github_streak_check.sh "4 hours to commit"
00 21 * * * /<path_to_github_streak>/github_streak_check.sh "3 hours to commit"
00 22 * * * /<path_to_github_streak>/github_streak_check.sh "2 hours to commit"
00 23 * * * /<path_to_github_streak>/github_streak_check.sh "1 hour to commit"
30 23 * * * /<path_to_github_streak>/github_streak_check.sh "30 min. to commit"
```

You will be emailed the specified message by crontab if you have not committed
