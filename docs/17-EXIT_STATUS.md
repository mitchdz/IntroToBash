# Exit Status

When a process terminates, it will return a status between 0 and 255.

```bash
$ (exit 254)
$ echo "last process exited with error code: $?"
last process exited with error code: 254
```

Commands can be chained with either `&&` and `||` which behave differently depending on the exit status.

`&&` executes the next command only if the previous command was successful:

```bash
$ echo a && echo b && (exit 1) && echo c
a
b
```

Whereas `||` breaks after the first command which terminates successfully

```bash
$ (exit 1) || echo a || echo b
a
```