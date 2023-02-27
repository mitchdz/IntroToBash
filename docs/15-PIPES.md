# Pipes

Pipes are used to redirect output from one command to another

```bash
$ env | grep HOME
HOME=/home/user
```

Multiple commands can be strung together

```bash
$ ls -R  | egrep -o "\..*$" | sort | uniq -c | sort -n -r  | head -5
     14 .txt
      5 .sh
      2 .png
      1 .md
      1 .jpg
```
The sequence does

* `ls -R` lists files recursively
* `egrep -o "\..*$"` matches every file extension
* `sort` sorts the output alphabetically
* `uniq -c` counts the number of repeated matches
* `sort -n -r` sorts the lines again
* `head -5` displays the first 5 lines

The exit status will always be the last command executed:

```bash
$ (exit 0) | (exit 254) | (exit 1)
$ echo $?
1
```