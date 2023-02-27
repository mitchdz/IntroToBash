# Environments

Some processes are ran in separate shells, and inherit different variables. By simply declaring a variable, it is stored in your shell, but no the environment, and therefore child processes will not inherit it.

Variables can be put on the environment by

```bash
$ declare -a var1="hello"
```

Which puts var1 in both your shell and on the environment. Simply putting the variable in the environment can be done such as:

```bash
$ export var1="hello"
```

Functions can be marked by applying the `-f` option

```bash
$ function parameters() {
> echo $@
> }
$ export -f parameters
$ parameters 1 2 3
1 2 3
```

The environment can be listed with `env`

```bash
$ env | tail -n 3
BASH_FUNC_parameters%%=() {  echo $@
}
_=/usr/bin/env
```

All commands in command substitution runs in a subshell, which inherits the current environment.