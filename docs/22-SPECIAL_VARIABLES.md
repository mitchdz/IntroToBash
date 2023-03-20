# Special Variables

### All arguments `$@`
Prints all arguments, used in the bash arguments readme.

### Number of arguments `$#`

### Script name `$0`
Very useful for diagnostic messages. e.g.:

```bash
echo $0: bad option $PARAM
```

### Process ID `$$`
`$$` simply stores the process ID of the shell.
### Exit Code `$?`
The shell holds the exit code of the last command.

```bash
$ ls / > /dev/null
$ echo $?
0
$ ls /asdfasdf > /dev/null
echo $?
2
```