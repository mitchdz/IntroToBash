# Brace Expansion

```bash
$ echo {1..10}
1 2 3 4 5 6 7 8 9 10
```

You can add a step by adding `..X`

```bash
$ echo {1..10..2}
1 3 5 7 9
```

A sequence of brace expansions expands into the cartesian product

```bash
$ echo {a..c}{1..3}
a1 a2 a3 b1 b2 b3 c1 c2 c3
```

You can easily make a lot of directories this way

```bash
$ mkdir -p ~/dirs/{dir1,dir2,dir3}{a..c}{1..3}
$ ls dirs
dir1a1  dir1b1  dir1c1  dir2a1  dir2b1  dir2c1  dir3a1  dir3b1  dir3c1
dir1a2  dir1b2  dir1c2  dir2a2  dir2b2  dir2c2  dir3a2  dir3b2  dir3c2
dir1a3  dir1b3  dir1c3  dir2a3  dir2b3  dir2c3  dir3a3  dir3b3  dir3c3
```

You can also nest brace expansions
```bash
$ echo {a{1{i,j},2,3}}
{a1i} {a1j} {a2} {a3}
```
