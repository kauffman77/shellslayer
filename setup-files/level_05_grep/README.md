# Flavor
Beware, paladin: in these directories it is said that the favored text
of the daemon lies. It speaks of a journey to dark places but excites
the daemon so greatly that it at time inadvertently mutters one of its
own names which is laid down in the mysterious text. The text is long
an arduous and while one may search parts of it using tools such as
`less`, it will be tedious, especially as the daemon sometimes dwells
on individual chapters in the `cantos` directory, each of which must
be searched on individually.

Thankfully a once might program know only as ED bestowed a power upon
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

