# Shebang

The `#!` shebang is used to tell the kernel which **interpreter** should be used to run the commands present in the file.

You will often see something along the lines of

```bash
#!/bin/bash
echo "Yay!"
```

If this file was titled "yay.sh" (and has executable permissions) you could execute it like

```bash
$ ./yay.sh
```

What really happens in the backend looks like:

```bash
$ /bin/bash ./yay.sh
```

## Shebangcat

To further prove this point, write the following contents in the file `./shebangcat`:

```bash
#!/bin/cat
All the contents of this file will be
printed in the screen when it's executed
(including the '#!/bin/cat' in the first line).
```
And try to execute the file:
```bash
$ ./shebangcat
#!/bin/cat
All the contents of this file will be
printed in the screen when it's executed
(including the '#!/bin/cat' in the first line).
```

## Shebangecho

To drive home this point, try writing the contents of `shebangecho`:
```bash
#!/usr/bin/echo
The contents of this file will *NOT* be
printed when it's executed.
```

```bash
$ ./shebangecho
./shebangecho
```

## env
Something else you may see is
```bash
#!/usr/bin/env bash
```

instead of simply
```bash
#!/bin/bash
```

Why is this? Well `/usr/bin/env` prints a big list of the environment variables, but if a command is provided after `env` then the command is ran in another instance of the shell. **NOTE:** __Not a subshell__. Environment variables will carry over (things that you `export`ed) but shell variables will be lost.