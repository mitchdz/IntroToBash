# Command Substitution

Command substitution can be taken place inside either `$()` or backticks ``

They are both the same, however `$()` is generally preferred because it's easier to nest.

```bash
listing=$(ls -l $(cat filenames.txt))
listing=`ls -l \`cat filenames.txt\``
```

The substitution replaces the output of a command in place with the notiation.

```bash
$ whoami
user
$ date
Mon Feb 27 06:42:38 PM UTC 2023
$ echo "Welcome $(whoami) today's date is $(date)"
Welcome user today's date is Mon Feb 27 06:42:42 PM UTC 2023
```

Command Substition can be used to capture the output of one command into a variable:

```bash
$ memory=$(free -h | grep Mem | awk '{print $2}')
$ echo ${memory}
550Mi
```