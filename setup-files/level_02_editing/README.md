# Flavor
Hark, paladin, and observe: there is a Spirit nearby that loathes the
Daemon and knows one of its names.  Know, though, that this spirit is
conceited and will not reveal the demon's name without a proper
supplication.  I have tried mightily to win favor with this flippant
spirit but have failed. Those that commune well with it always seem to
do the following:

- Use capitalization at the beginning of sentences
- Never dawdle with ellipses (...) and rather use commas
- Are EMPHATIC when saying please
- Know the appropriate use of double and single quotes in contractions
- Do not end requests in a questioning fashion but rather with gusto!!
- Repeat their supplications 5 times over to please the spirit

Perhaps you might find a way to appease this spirit and obtain the
daemon name it withholds.

# Objective
The objective of this level is simply to edit a text file so that a
"corrected" version of the line that appears towards the end in the
Supplication section appears some number of times and has better
formatting/grammar than its current form. However, the textfile is on
the system on which you are viewing through the shell necessitating
the use of a terminal-based text editor. Currently, there are two
terminal-based editors that are installed.

|---------------|------------------------------------------------------------------|
| Command       | Effect                                                           |
|---------------|------------------------------------------------------------------|
| nano file.txt | Edit a file in the nano editor, a simple terminal-based editor   |
| vi file.txt   | Edit a file in the vi editor, a complex terminal-based editor    |
|               | On most modern systems, `vi` is an alias for `vim`: vi improved) |
|---------------|------------------------------------------------------------------|


If you are looking at this README in the terminal via cat or less,
then in a moment, run one of the above commands to open this file in
that editor. If you're already using an editor to view this file, then
proceed onward.

WARNING: If this is your first time using either `vi` or `nano`, there
is a bit of a learning curve so you may wish to read the below
commands carefully so that you can at least exit the editor after
opening it.

## nano commands
nano has the distinct advantage that pressing keys like 'a' will
insert the letter 'a' in the text file, arrows work to move the cursor
up/down/left/right, and 'Backspace' will delete the preceding
character. Keystrokes to save files and exit the program are listed at
the bottom of the screen with the convention that ^O means "Ctrl-o"
(hold control key, press 'o'). This makes editing relatively straight
forward. Below are a summary of commands relevant to nano.

|---------|---------|------------------------------------------------------------------------------------|
| Command | Listing | Effect                                                                             |
|---------|---------|------------------------------------------------------------------------------------|
| a       |         | Insert the character 'a' at the cursor                                             |
| Ctrl-o  | ^O      | Save the file, prompts for a file name to write out defaulting to the current name |
| Ctrl-k  | ^K      | Cut the entire line of text where the cursor is located; allows pasting that line  |
| Ctrl-u  | ^U      | Paste the previously cut line of text                                              |
| Ctrl-x  | ^X      | Exit the program and return to the terminal                                        |
| Alt-u   | M-U     | Undo the last editing action                                                       |
|---------|---------|------------------------------------------------------------------------------------|

## vi commands
vi is the classic Unix editor with a near vertical learning
curve. Once a user is acquainted with its command set and modal
nature, text can be manipulated very quickly. However, acquiring skill
with vi is a loooong process. Since it is nearly universally available
on Unix systems, knowing a few tricks with it to do quick edits is
extremely useful.

|-----------|----------------------------------------------------------------------------------------|
| Command   | Effect                                                                                 |
|-----------|----------------------------------------------------------------------------------------|
| :         | Colon is used to start a command of some sort                                          |
| :q enter  | Quit vi and return to the terminal; prompts if the file has changed but not been saved |
| :w enter  | Save changes in the file                                                               |
| :q! enter | Quit vi without saving changes to the file                                             |
| :wq enter | Save changes in the file then quit vi to the terminal                                  |
| i         | Enter "Insert Mode" so that type 'w' will insert the letter 'w'                        |
| Esc       | The escape key exits Insert Mode and returns to Command Mode                           |
| j         | Insert Mode: insert the letter 'j' in the file at the cursor                           |
| j         | Command Mode: move the cursor DOWN one line                                            |
| k         | Command Mode: move the cursor UP one line                                              |
| h         | Command Mode: move the cursor LEFT one column                                          |
| l         | Command Mode: move the cursor RIGHT one column                                         |
| /         | Command Mode: start a regular expression search like in `less`                         |
| yy        | Command Mode: copy (yank) the entire current line of text                              |
| p         | Command Mode: Paste the last yanked line of text                                       |
| u         | Command Mode: Undo the last editing action                                             |
|-----------|----------------------------------------------------------------------------------------|

The above commands are a minuscule fraction of the commands vi
offers. They are, however, enough to do the basic editing required
here.

Classic vi has largely been subsumed by `vim`: VI Improved and so most
coders wishing to use the vi-lineage of editors will want to study vim
(often running `vi` actually runs vim). There are tons of tutorials
and resources available on vi/vim. For more information, you might
consult the following.
- Type ':help user-manual' in vim for the extensive, built-in guide
- Short tutorial from the Linux Foundation: 
  https://www.linuxfoundation.org/blog/blog/classic-sysadmin-vim-101-a-beginners-guide-to-vim
- Key binding cheat sheet: https://vim.rtorr.com/
- Learn vim through gaming: https://vim-adventures.com/

## Other Editors
There are no other editors currently installed.

Apologies to emacs users: installing emacs balloons the size of Docker
containers and the point of this exercise is to gain passing
familiarity with one of the two terminal editors that is almost always
installed by default. This is unfortunately not the case with emacs.

## Editing the Altar of Names
After determining the name of the daemon in this level, make sure to
add it to the end of the `ALTAR_OF_NAMES.txt` to verify its
correctness. Use your new editing skills to add it on and avoid
overwriting preceding names.

# Flavor
Paladin: have you equipped thyself with an EDITOR? They are all
powerful allies though this land is bereft of the emperor of editors,
Emacs. In case you have forgotten, others have told that a proper
supplication to the spirit within will follow these tenets:

- Use capitalization at the beginning of sentences
- Never dawdle with ellipses (...) and rather use commas
- Are EMPHATIC when saying please
- Know the appropriate use of double and single quotes in contractions
- Do not end requests in a questioning fashion but rather with gusto!!
- Repeat their supplications 5 times over to please the spirit

Supplicate thyself below.

# Supplication
PHRASE
