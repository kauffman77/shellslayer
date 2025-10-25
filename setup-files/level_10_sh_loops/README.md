# Flavor
Noble paladin: in this directory there is a task even patient Sisyphus
would despair of. Hundreds of formerly fine text files have been
perniciously renamed by the Daemon to dat files. The has befuddled the
monitor process that dwells here. It reveled in counting the contents
of the text files but is confused by this sudden alteration.  It is
said the monitor knows a name of the Daemon. Perhaps if you were to
restore the files to their proper extension, the monitor would reveal
said name. But alas, it would take so long to do so. Unless, that is,
you have mastered the power of shell substitutions and loops. Were it
only so!

# Objective
This directory contains a large number of files with an inappropriate
file extension: the files are listed as .dat but are actually text
files which should likely have the .txt extension.  It is possible to
move all these files "by hand" but this process can be accomplished
far more quickly through the use of basic shell scripting
facilities. Once all files are renamed from .dat to .txt, a monitoring
process will reveal a name of the Daemon.

A few relevant commands are described below:
|----------------|----------------------------------------------------------------------|
| Command        | Effect                                                               |
|----------------|----------------------------------------------------------------------|
| ls dir         | List the contents of a directory                                     |
| ls *.abc       | List all files in the current directory that end with .abc           |
| mv abc xyz     | Moves the file abc to xyz, renames it in this case                   |
| echo hello     | Prints the word 'hello' on the screen                                |
| f='hello'      | Sets a shell variable to the string 'hello'                          |
| echo $f        | Prints the value of variable f, 'hello' in this case                 |
| echo ${f/ll/W} | Prints the variable f but with the pattern 'll' substituted with 'W' |
|----------------|----------------------------------------------------------------------|

Experiment with these basic commands to see their effect as they will
shortly be combined.

Most command line shells include looping structures. The usual syntax
in Bash, the most common command line shell, is as follows:

```sh
for x in a b c d e; do
    echo x has the value $x;
done
```

The loop will execute 5 times assigning the loop variable `x` to the
values in the list that follows, a b c d e, successively and will
produce output like the following:
```sh
>> for x in a b c d e; do echo x has value $x; done
x has value a
x has value b
x has value c
x has value d
x has value e
```
Note the style: in the first example multiple lines are used but on
the command line, a one-liner is more common.

One other common trick is to use a command to generate the list of
items to iterate over.

```sh
>> for file in $(ls /); do echo $file with o for OOO is ${file/o/OOO}; done
bin with o for OOO is bin
boot with o for OOO is bOOOot
daemon with o for OOO is daemOOOn
dev with o for OOO is dev
etc with o for OOO is etc
home with o for OOO is hOOOme
lib with o for OOO is lib
lib64 with o for OOO is lib64
main.sh with o for OOO is main.sh
media with o for OOO is media
mnt with o for OOO is mnt
opt with o for OOO is OOOpt
proc with o for OOO is prOOOc
root with o for OOO is rOOOot
run with o for OOO is run
sbin with o for OOO is sbin
setup-files with o for OOO is setup-files
srv with o for OOO is srv
sys with o for OOO is sys
tmp with o for OOO is tmp
usr with o for OOO is usr
var with o for OOO is var
```
- `$(ls /)` lists all files in the root directory and these become the
  items over which the loop iterates
- Shell substitution is used as well to show an input and its
  modification.

Experiment with shell loops according and substitutions. Note that you
do not need to `echo` in loops, you may execute an command or several
commands if you separate them with semicolons.

