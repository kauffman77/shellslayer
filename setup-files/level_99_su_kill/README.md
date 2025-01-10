# Flavor
You have done it, paladin! You have found all the names of the
Daemon. Speak those foul names at the altar of `su` and obtain the
power of **ROOT** that you may finally rid the process tree of this
abomination!

# Objective
At this point you should have acquired all of the Daemon's names. They
form the root password for the Unix system in which you are logged in.
The root or administrator password allows a user to change into the
administrator account and carry out certain operations that normal
users are prevented from doing. In this case, one simply wishes to
kill the process called "daemon".

Here are relevant commands.
|-------------------|-----------------------------------------------------------------------|
| Command           | Effect                                                                |
|-------------------|-----------------------------------------------------------------------|
| su username       | Switch the given user, prompts for that users password                |
| su root           | Switch to the root user, prompts for the root password                |
| su                | Same as above                                                         |
| ps -A             | List all running processes on the system; shows IDs and command names |
| kill -9 1234      | Kill process 1234 with the kill signal                                |
| pkill -9 cmd_name | Kill all processes that match 'cmd_name' with the kill signal         |
|-------------------|-----------------------------------------------------------------------|

The goal of this phase is simply to change to the root user and kill
the daemon process.

# Discussion
Many modern Unix systems prefer NOT to enable users to use the root
account. Rather, for administrative tasks they prefer to add
individual users to a list of those who can temporarily escalate to
root permissions via the `sudo do_something` convention, a
concatenation of `su` and `do`.  Use of `sudo` will prompt for the
users password to authenticate then run the `do_something` command as
the root user the convert back to the normal user.  Generally this is
preferred but most Unix systems still have a root account and support
traditional `su`.

