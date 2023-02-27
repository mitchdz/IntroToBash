# Word Splitting

Words splitting is an interesting expansion, and happens as one of the last expansions. It is useful in the following scenario:

```bash
$ files="file1.txt file2.txt file3.txt"
$ touch $files
$ ls file*
file1.txt  file2.txt  file3.txt
```

As shown above, 3 files were created instead of a single file called `"file1.txt file2.txt file3.txt"`.