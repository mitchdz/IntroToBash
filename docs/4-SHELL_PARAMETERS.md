# Shell Parameters

Bash allows you to store parameters 

```bash
$ fruit="orange"
```
Now you can expand the variable via _parameter expansion_

```bash
$ echo $fruit
orange
```

You can also do basic math operations with variables

```bash
$ eclare -i var1=5
$ var1+=4
$ echo $var1
9
```

Notice how I use the command `declare` up above, this allows me to add the `-i` flag to give the integer attribute to the variables. You can find what this flag does with the `--help` menu of `declare`

```bash
$ declare --help | grep "\-i"
      -i	to make NAMEs have the `integer' attribute
```