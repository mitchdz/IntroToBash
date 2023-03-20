# Case Statements

Bash also supports case statements which generally look like:

```bash
case EXPRESSION in

  PATTERN_1)
    STATEMENTS
    ;;

  PATTERN_2)
    STATEMENTS
    ;;

  PATTERN_N)
    STATEMENTS
    ;;

  *)
    STATEMENTS
    ;;
esac
```


For example, we can do something like:

```bash
#!/bin/bash

filename="tmp"
filetype=""

if [ ! -z "$1" ];
then
        filetype=$1
fi

case $filetype in
  image|photo)
    filename="${filename}.png"
    ;;
  text)
    filename="${filename}.txt"
    ;;
  *)
    filename="${filename}.bin"
    ;;
esac

echo "resulting filename: $filename"
```

Running this file will result in

```bash
$ ./test.sh
resulting filename: tmp.bin
$ ./test.sh image
resulting filename: tmp.png
$ ./test.sh photo
resulting filename: tmp.png
$ ./test.sh text
resulting filename: tmp.txt
```