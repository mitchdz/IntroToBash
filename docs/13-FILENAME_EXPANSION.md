# Filename Expansion

Filename expansion allows expansion of paths by simple patterns.

Globbing `*` can match against any number of characters

```bash
$ touch file{1..3}.txt
$ touch file999.txt
$ ls *.txt
file1.txt  file2.txt  file3.txt file999.txt
```

`?` denotes any **single** character can be there

```bash
$ touch 1.txt
$ ls ?.txt
1.txt
```

A set of characters can be matched inside a `[]`

```bash
$ touch Afile bfile
$ ls [Ab]file
Afile  bfile
```

Character ranges can be used with a `-` inside of the range `[]`

```bash
$ ls [a-zA-Z]file
Afile  bfile
```

To match a pattern 0 or 1 time use the `?()` operator

```bash
$ touch file.txt
$ ls file?(1).txt
file1.txt  file.txt
```

Or any time, use the `*()` operator:

```bash
$ touch file11.txt
$ ls file*(1).txt
file11.txt  file1.txt  file.txt
```

To match a pattern at least one time use `+()`

```bash
$ ls file+(9).txt
file999.txt
```

Multiple patterns can be denoted with a `|` in between each of the operators `?()` `*()` `+()`:

```bash
$ echo file+(1|a|B).txt
file11.txt file1.txt filea.txt fileB.txt
```


