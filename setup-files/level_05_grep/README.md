# Flavor
Beware, paladin: in these directories it is said that the favored text
of the daemon lies. The text relates a journey to dark places. While
reading it, the daemon often grows excited and inadvertently scribbles
one of its names into the text. The text is long an arduous and while
one may search parts of it using tools such as `less`, it will be
tedious, especially as the daemon sometimes dwells on individual
chapters in the `cantos` directory, each of which must be searched on
individually.

Thankfully a once mighty program know only as ED bestowed a power upon
the land to help you before it shrank into obscurity.  Master the
power of GREP to search for the daemon's previous name and you will
surely find the daemon's next name.

# Objective
Spread across the text files within this directory and its
subdirectories are mentions of the daemon's previous name along with
parts of its next name.  Searching through all files by hand can
solve locate them but it is far more efficient to use command line
search tools to locate the names.

Searching for the previously revealed demon name is a good start
though this may yield some false positives that do not relate to the
daemon's name and possibly miss some. A few hints are to
- Search for the known daemon name at the beginning of lines
- Search with flexible case as the name may appear with mixed case:
  Daemon, daEMon, dAemON, etc.
  
The classic searching tool is `grep` which can be used as follows.
|------------------------|-----------------------------------------------------------|
| Command                | Effect                                                    |
|------------------------|-----------------------------------------------------------|
| grep 'abc' file.txt    | Show all lines that contain the pattern 'abc' in file.txt |
| grep -i 'abc' file.txt | Search for 'abc' but ignore case: also report 'AbC' etc.  |
| grep 'abc' *.txt       | Search all text files in the current directory for 'abc'  |
| grep 'abc' -r .        | Recursively all files in the current directory for 'abc'  |
|------------------------|-----------------------------------------------------------|

`grep` understand a variety of regular expression syntax as well but
only a few regex tricks are useful for this exercise.

The search phrase like abc does not need to be quotes if it is a
single word; any phrase that spaces must be quoted.

EXAMPLES:
grep 'hello' file.txt
OR
grep hello file.txt

grep 'hello world' file.txt  - must have quotes due to the space in
the search phrase.

NOTE: you do not need to edit any files in this exercise, only search
them for answers.
