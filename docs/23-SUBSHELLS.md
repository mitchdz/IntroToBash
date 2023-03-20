# Subshells

Say you need to change the environment for something, but don't want the changes to be permanent. These tasks benefit from using a **subshell**, an entirely new shell process that you can create just to run a command or two. The new shell has a copy of the original shell’s environment, and when the new shell exits, any changes you made to its shell environment disappear.

Using a subshell is easy, just surround the command in `()` such as:

```bash
(cd /tmp; PATH=/not/a/default/path; ./program)
```

