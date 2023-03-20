# Vim

Vim is a text editor that you use inside the terminal. To use Vim, simply type vim and the name of the file you want to modify

```bash
$ vim test.txt
```

Vim is a modal editor which means you can be in different modes. Vim has 3 modes:
* Command Mode
* Insert Mode
* Visual Mode

For this class we will just focus on the first 2, command and insert mode.

In command mode, you can do things such as find words, undo, paste, ect... And in insert mode you just type text.



While in Insert mode, simply press `[Escape]` to enter Command mode.


To save the file, you type `:w` and press enter when in Command Mode. To quit, you do `:q` and enter when in  Command mode. You will often see people doing `:wq` to save+quit.


To enter insert mode, there's a few useful characters to remember from Command mode:

* `i` enter INSERT mode before the cursor
* `I` enter INSERT mode at the start of the current line
* `a` enter INSERT mode appending after the cursor
* `A` enter INSERT mode appending to the end of the current line

You can move through the file with arrow keys, or alternatively you can use `hjkl`
* `j`: down
* `k`: up 
* `h`: left
* `l`: right 