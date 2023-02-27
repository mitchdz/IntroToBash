# Redirections

Commands by default write to STDOUT (aka standard out), which by default is connected to the terminal.

```bash
$ env > file
```
This executes the command `env` and redirects the output into a file called `file`

A single `>` overwrites the file, whereas `>>` appends the output

```bash
$ date >> file
$ tail -n 3 file
OLDPWD=/home/user/.ssh
_=/usr/bin/env
Mon Feb 27 07:24:29 PM UTC 2023
```

STDOUT is a file descriptor (as everything is a file in Linux!) and they can be seen in `/dev/fd`

```bash
$ ls -l /dev/fd/
lrwx------ 1 user user 64 Feb 27 19:25 0 -> /dev/pts/0
lrwx------ 1 user user 64 Feb 27 19:25 1 -> /dev/pts/0
lrwx------ 1 user user 64 Feb 27 19:25 2 -> /dev/pts/0
```

* `0` is the file descriptor for reading, AKA STDIN
* `1`  is for writing AKA STDOUT
* `2` is for writing errors aka STDERR

What file descriptor gets redirected can be stated, and the command ran at the start can be explicitly written as

```bash
$ env 1> file
```

To redirect STDERR to a file:

```bash
$ ls undefined 2> file
$ cat file
ls: cannot access 'undefined': No such file or directory
```

Both STDOUT and STDERR can be redirected to a file
```bash
$ ls ~ undefined 1>file 2>&1
$ head -n 5 file
ls: cannot access 'undefined': No such file or directory
/home/user:
1.txt
Afile
bfile
```

In the above case, file descriptor 1 (STDOUT) is redirected to the file `file`, and the file descriptor 2 (STDERR) is duplicated to the same target as STDOUT. Be careful of order here:

```bash
$ ls ~ undefined 2>&1 1>file
ls: cannot access 'undefined': No such file or directory
```

Do note that `1>file 2>&1` is **NOT** the same as `1>file 2>file`

```bash
$ ls ~ undefined 1>file 2>&1
$ head -n 2 file
ls: cannot access 'undefined': No such file or directory
/home/user:
$ ls ~ undefined 1>file 2>file
$ head -n 2 file
/home/user:
1.txt
```

To ignore STDERR, file descriptor 2 can be redirected to `/dev/null`

```bash
$ ls ~ undefined 1>file 2>/dev/null
$ head -n 2 file
/home/user:
1.txt
```

Or all output can be redirected with `&>`. For example, to ignore all output:
```bash
$ ls ~ undefined &>/dev/null
```

A combination of redirecting input and output can be easily done

```bash
$ head -c 1024 < /dev/zero > 1024B_zero.bin
$ hexdump 1024B_zero.bin 
0000000 0000 0000 0000 0000 0000 0000 0000 0000
*
0000400
```

Custom file descriptors can be created with `exec`

```bash
$ exec 4>poem
```

This file descriptor can be redirected to just like usual

```bash
$ echo "Oranges and lemons" >&4
$ cat poem 
Oranges and lemons
```