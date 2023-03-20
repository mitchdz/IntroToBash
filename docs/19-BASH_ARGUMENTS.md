# Bash Arguments

Like most programs, Bash can take in an argument!

For all of these examples, the contents are in a file named `test.sh` in cwd because I'm too lazy to find proper names.

```bash
echo "Username: $1";
echo "Age: $2";
echo "Full Name: $3";
```
Try running the script like:
```bash
./test.sh mitch 25 "Mitchell Dzurick"
```

You can also loop through all provides arguments

```bash
i=1;
for argument in "$@"
do
    echo "$i - $argument";
    i=$((i + 1));
done
```

And try it like:
```bash
./test.sh a b c d e f g
```



## Flags with getops


```bash
while getopts u:a:f: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
        a) age=${OPTARG};;
        f) fullname=${OPTARG};;
    esac
done
echo "Username: $username";
echo "Age: $age";
echo "Full Name: $fullname";
```
The nice part is that the arguments can be in any order when provided from the commandline

Then you can try the script like so:
```bash
./test.sh -u mitch -a 25 -f "Mitchell Dzurick"
# same as
./test.sh -a 25 -f "Mitchell Dzurick"  -u mitch
```

If these variables are necessary then you can check for them and fail the script if they don't exist. Add the following lines are the "done".

```bash
...
if [ -z "$username" ]; then
    echo "username is not set! Provide username with -u flag"
    exit 1
fi
...
```

### Pop Quiz!

What do you think

```bash
echo $0
```
returns?