# Arrays

Bash allows you to store arrays

```bash
$ directories=(dir1 dir2 dir3)
```

You can access indexed elements of the array

```bash
$ echo ${directories[0]}
dir1
```

And you can set individual indexes

```bash
$ directories[3]=dir4
$ echo ${directories[3]}
dir4
```

You can list all values in an array with the special character `*`

```bash
$ echo ${directories[*]}
dir1 dir2 dir3 dir4
```

You can find the number of characters with the `#` operator

```bash
$ echo ${#directories[*]}
4
```


Run a command using all variables in an array

```bash
$ for dir in ${directories[*]}; do mkdir -p ${dir}; done
$ ls | grep dir
dir1
dir2
dir3
dir4
```

And we can easily remove each newly creatied directory in a very similar fashion


```bash
$ for dir in ${directories[*]}; do rmdir -p ${dir}; done
$ ls | grep dir
```


You may also make an associative array (AKA map or dictionary) with the `-A` flag

```bash
$ declare -A vars
$ vars[x]=1
$ vars[y]=2
$ vars[z]=3
$ echo ${vars[x]}
1
$ echo ${vars[*]}
3 2 1