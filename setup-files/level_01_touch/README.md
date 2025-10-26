# Flavor
Paladin, have you crafted an Altar of Names? It is said that keeping
such an altar in one's home (directory) reveals mysterious
truths. Legends rumor that such alters can even indicate the veracity
of Daemon names. You would do well to make one and `touch` it
frequently to discover its mysterious effects.

# Objective
Rather than reveal a Daemon name, this level shows how to record the
names you have discovered and ensure they are correct. This will help
track your progress. 

First, run the command:
```sh
>> touch ~/ALTAR_OF_NAMES.txt
```

This will create an empty text file with the given name in your home
directory. This file is monitored by a benevolent process which,
whenever the file changes, will display the number of correct daemon
names in sequence in that file.

`touch` is useful for creating empty files and also for updating the
timestamp on existing files to make them look as though they recently
changed. Run the command `touch ~/ALTAR_OF_NAMES.txt` at any time to
change that files timestamp which triggers display of the number of
correct names.

On initially creating the `ALTAR_OF_NAMES.txt`, it will be empty. A
quick way to get content into files is to `echo` text then redirect it
into the file. For example:
```sh
>> echo Hello there                # print some text to the screen
Hello there
>> echo Hello there > hello.txt    # redirect output into a file 
>> cat hello.txt                   # show the content of the file
Hello there
```

Try `echo`ing the daemon name you discovered in the first level into
`ALTAR_OF_NAMES.txt` to see if you are on the right track. Echoing
with redirection like this overwrites the previous contents of the
file ("clobbers" the file) so take care not to lose data.

To add names in later levels you'll want a way to edit the altar file
more interactively than what `echo` allows.

But that's the next level...
