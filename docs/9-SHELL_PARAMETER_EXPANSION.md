# Shell Parameter Expansion

Parameter expansion allows you to subsitute parameter names by their values.

```bash
$ word="Orange"
$ echo ${word}
Orange
```

You can expand a substring similar to Python

```bash
$ echo ${word:2:3}
ang
$ echo ${word:2}
ange
```

To get all the characters after a certain charactor using the `##pattern` operator

```bash
$ path="file.tar.gz"
$ echo ${path##*.}
gz
```

To remove the first match and characters before, use the `#pattern` operator

```bash
$ echo ${path#*.}
tar.gz
```

To remove the characters afer the first match, use the `%pattern` operator

```bash
$ echo ${path%%.*}
file
```

To remove the characters at the end of the last match use the `%pattern` operator

```bash
$ echo ${path%.*}
file.tar
```

To replace the first match use the `/pattern/string` operator

```bash
$ echo ${path/./:}
file:tar.gz
```

To replace **all** occurences use the `//pattern/string` operator

```bash
$ echo ${path//./:}
file:tar:gz
```

To remove matches, use the `//pattern` operator

```bash
$ echo ${path//tar}
file..gz
```

These transformations can also be performed on array elements

```bash
$ fruits=(orange lemon apple melone banana)
$ echo ${fruits[*]//a*/A}
orA lemon A melone bA
```