# Tilde Expansion

```bash
$ echo ~
/home/user
```

`~` is a special character that represents the shell variable `$HOME`

If no user exists, the `~` will be treated as a literal 
```bash
$ echo ~{user,user1}
/home/user ~user1
```