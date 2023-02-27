# Arithmetic Expansion

Arithmetic expansion occurs between the `$(())` operators

```bash
$ echo $(( (1+2) / 2 ))
1
```

Variables are expanded by name only:

```bash
$ var1=2
$ echo $(( var1 - 12 ))
-10
```

Undeclared variables are expanded to 0

```bash
$ unset var1
$ echo $(( 2 ** var1 ))
1
```

Octal values are denoted with a leading `0`

```bash
$ echo $(( 010 ))
8
```

Hexadecimal values are prefixed with `0x`

```bash
$ echo $(( 0x10 ))
16
```

Operator order happens the same as in C:

```bash
$ int=0
$ echo $(( ++int + int++ + --int + int--))
4
$ echo $int
0
```

Integers can be bitshifted left or right


```bash
$ echo $(( 8 << 2 ))
32
$ echo $(( 8 >> 2 ))
2
```

Bash also supports equality operations where true is denoted as `1` and false is denotaed as `0`

```bash
$ echo $(( 1 < 2 <= 3 ))
1
$ echo $(( 1 < 2 > 3 ))
0
$ echo $(( (1 != 2) == 1))
1

```
