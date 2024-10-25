# Flavor
Oh paladin, thank goodness you have arrived. Within this directory
resides a great poet. He traversed the heights of heavens, the perils
of purgatory, and the depths of hell itself where he learned a name of
the Daemon. He has laid out his account of heaven in the files
scattered here. But... it is almost too much to bare... the loathsome
Daemon has defaced the poem.  It has changed words throughout leaving
the poet inconsolable (as poets often are) and speaks naught. Perhaps
if you were to able to restore the files and the poem to their
original state, the poet would cheer and reveal the Daemon name he
knows.  

I have inspected the poem and recall from an early reading that the
following words have been changed.
- 'Him' has become 'ME'  (the Daemon fancies himself the almighty)
- 'God' has become 'Doggy' (the impudence! the audacity)
- 'Beatrice' has become 'Beetlejuice' (I hear the Daemon is a movie lover)
- 'Mary' has become 'Pippin' (I do not understand why this is funny
  but then I do not watch movies)

Before they were defaced, all the poem files were simply named
`canto-00.txt`, `canto-01.txt` and so on. I'm sure the poet would like
for these files to be present once again (and would not mind if the
defaced versions remained).

Please repair the poem, paladin.  It may take aeons to do so with your
text editor but I have heard that the power of Stream Editing, that of
`sed`, may be of use in case such as this.


# Objective
Traditional Unix command line tools provide a wealth of programmatic
text manipulation options.  A mid-range option is `sed`, a Stream
Editor, which can be used to alter and filter text using a small set
of short-form commands. One of its simplest but most oft uses is to
perform text substitutions on files or input streams.

Below are some examples of performing text substitution with `sed`
with its simple substitution capability.
```sh
# show the contents of a small sample file
>> cat fileA.txt
Abc 123
Abc Baby
you and me!

# use sed to substitute Abc with Xyz; output goes to the screen
>> sed 's/Abc/Xyz/g' fileA.txt 
Xyz 123
Xyz Baby
you and me!

# Do the same substitution but redict output into a file
>> sed 's/Abc/Xyz/g' fileA.txt > fileX.txt

# Show the contents of the results file
>> cat fileX.txt
Xyz 123
Xyz Baby
you and me!

# Perform 2 substitutions 'Abc'->'Xyz' and 'you and me'->'leave me be'
>> sed 's/Abc/Xyz/g; s/you and me/leave me be/g' fileA.txt 
Xyz 123
Xyz Baby
leave me be!
```

The substitution facility of `sed` is similar to the find/replace
functionality provided by most text editors. However, `sed` is more
commonly used on to process streams of data or used to process many
files needing the same substitutions in a shell loop.

The objective of this level is to use `sed` to perform text
substitutions on a collection of text files to "fix" them. All text
files need the same set of substitutions but there are many of them so
it is intractable to open each in a text editor and perform all of
them. Rather, `sed` combined with a shell loop and some file name
substitution is an excellent fit for this situation.
