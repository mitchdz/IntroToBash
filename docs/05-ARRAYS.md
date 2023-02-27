# Arrays

Bash has the capability to store arrays

```bash
$ directories=(dir1 dir2 dir3)
```

Array indices can be accessed

```bash
$ echo ${directories[0]}
dir1
```

Individual indexes can be set

```bash
$ directories[3]=dir4
$ echo ${directories[3]}
dir4
```

List all values in an array with the special character `*`

```bash
$ echo ${directories[*]}
dir1 dir2 dir3 dir4
```

Find the number of elements with the `#` operator

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

Remove each newly creatied directory in a very similar fashion


```bash
$ for dir in ${directories[*]}; do rmdir -p ${dir}; done
$ ls | grep dir
```


An associative array (AKA map or dictionary) can also be made with the `-A` flag

```bash
$ declare -A vars
$ vars[x]=1
$ vars[y]=2
$ vars[z]=3
$ echo ${vars[x]}
1
$ echo ${vars[*]}
3 2 1
