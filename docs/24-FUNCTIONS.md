# Functions

You can make a function in bash either like

```bash
function_name () {
    <commands>
}
# or
function function_name {
    <commands>
}
```

There is no difference to the 2 above methods, it's just personal preference. Do note the () is not to store variables, it's just there to look pretty.

You pass arguments to functions just like any other bash command - with the arguments directly after it

```bash
#!/bin/bash

function log_message {
    echo "    $1" | tee -a ./tmp.log
}

log_message "Hello world!"
```

```bash
$ ./test.sh
    Hello world!
$ cat tmp.log
    Hello world!
```

---

### Variable scope

```bash
#!/bin/bash
# Experimenting with variable scope

var_change () {
  local var1='local 1'
  echo Inside function: var1 is $var1 : var2 is $var2
  var1='changed again'
  var2='2 changed again'
}

var1='global 1'
var2='global 2'

echo Before function call: var1 is $var1 : var2 is $var2

var_change

echo After function call: var1 is $var1 : var2 is $var2
```

### Overriding commands


```bash
#!/bin/bash
# Create a wrapper around the command ls

ls () {
  command ls -lh
}

ls
```

Notice the `command` being used. Without it we will be in an infinite loop!