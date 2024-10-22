# Flavor
Beware, dear paladin: you are entering a woeful forest of folders,
twisted directories riddled with dead ends.  It is rumored that the
Daemon haunts these parts at times and that there is an altar.txt
somewhere within containing one of its names. I have searched but
become befuddled by the depths of directory.  If only one could `find`
that altar.txt, but what power could possibly traverse such an tangle?

# Objective
This directory contains a large number of subdirectories with a single
text file located somewhere deeply within it. It represents a
situation often encountered where a file with a certain name, pattern,
contents, or other property is desired but its exact location is not
known and searching "by hand" via listing / cd etc. is intractable.

The `find` utility is designed specifically to ease these tasks. It
will recursively search a directory visiting all files within. `find`
can be instructed to print information about files that are of
interest or perform other actions on those files.

An overview of its use is as follows
|----------------------|---------------------------------------------------------------------|
| Command              | Effect                                                              |
|----------------------|---------------------------------------------------------------------|
| find /usr/bin        | Recursively print ALL of the files under directory `/usr/bin`       |
| find .               | Recursively print ALL of the files under the current directory      |
| find . -name 'hello' | Search the current directory for a file named `hello` and           |
|                      | and print its path if found                                         |
| find . -name '*.dat' | Search the current directory and print the paths of all files       |
|                      | that end with `.txt`; the `*` is a "wildcard" that matches anything |
|----------------------|---------------------------------------------------------------------|

Use the capabilities of `find` to locate a text file that is mentioned
in the Flavor section which will contain solution to this level.
