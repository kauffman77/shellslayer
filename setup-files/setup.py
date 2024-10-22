#!/usr/bin/env python3
import sys
import os
import random
import subprocess

USER_HOME = "/home/paladin"


rootpass = []
"""List of all parts of the root password, the "Names" of the
daemon. This is global to allow level setup to access previous names

"""

def shell(cmd):
  # subprocess.run(cmd,shell=True)
  os.system(cmd)


def main(cmd_args):
  seed = int(cmd_args[0])
  random.seed(seed)
  print(f"Seed is {seed}",flush=True)

  names = []
  with open("demon-names-large.txt","r") as f:
    names = f.read().rstrip().split("\n")

  random.shuffle(names)         # randomize names

  res = setup_level_00_less(names)
  rootpass.append(res)

  res = setup_level_05_grep(names)
  rootpass.append(res)

  res = setup_level_10_sh_loops(names)
  rootpass.append(res)

  rootpass_str = ''.join(rootpass)
  with open("rootpass.txt","w") as fout:
    print(rootpass_str,file=fout)
  
  setup_level_99_su_kill(names)
  
  

def setup_level_00_less(names):
  readmefile = 'level_00_less/README.md'
  name = names.pop()            # pick last name and remove it
  shell(f"sed 's/DEMONNAME/{name}/' {readmefile} > {USER_HOME}/README.md")
  return name


def setup_level_05_grep(names):
  name = names.pop()            # pick last name and remove it
  lvl="level_05_grep"
  first_letters = name[0:1]     # some demon names are only 2 letters
  rest_letters = name[1:]
  prevname = rootpass[-1]       # name from previous phase
  level_dir = f"{USER_HOME}/{lvl}"
  shell(f"mkdir -p {level_dir}")

  dante_file = f'{lvl}/dantes-inferno.txt'
  dante_lines = None
  with open(dante_file,"r") as inp:
    dante_lines = inp.read().split("\n")

  name_line = random.randrange(300,len(dante_lines)-100)
  out_file = f"{level_dir}/0_inferno.txt"
  with open(out_file,"w") as outf:
    for (i,line) in enumerate(dante_lines):
      if i==name_line:
        print(f"{prevname}: Another of my names begins {first_letters}",file=outf)
      print(line,file=outf)

  letter_lines = [random.randrange(50,len(dante_lines)) for _ in rest_letters]
  letter_lines.sort()           # lines in sorted order
  lines_and_letters = list(zip(letter_lines,rest_letters))  # [(234,'a'), (478,'l'), ...]
  lines_and_letters_index = 0
  canto_count = 0
  shell(f"mkdir -p {level_dir}/cantos")

  outf = open(f"{level_dir}/cantos/canto_{canto_count}.txt","w")
  for (i,line) in enumerate(dante_lines):
    if "Canto" in line:
      outf.close()
      canto_count += 1
      outf = open(f"{level_dir}/cantos/canto_{canto_count:02}.txt","w")
    print(line,file=outf)
    if lines_and_letters_index < len(lines_and_letters):
      (line_idx, letter) = lines_and_letters[lines_and_letters_index]
      if i == line_idx:
        prevname_mixed = []
        for c in prevname:      # random capitalization of the name to require case insensitve searches
          if random.randrange(10)<5:
            prevname_mixed.append(c.upper())
          else:
            prevname_mixed.append(c.lower())
        prevname_mixed = "".join(prevname_mixed)
        print(f"{prevname_mixed}: then {letter}",file=outf)
        lines_and_letters_index += 1
  outf.close()      
  return name

def setup_level_10_sh_loops(names):
  name = names.pop()            # pick last name and remove it
  lvl="level_10_sh_loops"
  level_dir = f"{USER_HOME}/{lvl}"
  monitor=f"{lvl}/sh_loop_monitor.sh"
  readme=f"{lvl}/README.md"
  limit = 2000
  shell(f"sed -i.bk 's/DEMONNAME/{name}/g; s/LIMIT/{limit}/g;' {monitor}")
  shell(f"chmod u+x {monitor}")
  shell(f"mkdir -p {level_dir}")
  shell(f"cp {readme} {level_dir}")
  shell(f"cd {level_dir} && seq {limit} | split -l 10 - nums_")
  shell(f"cd {level_dir} && for f in nums_*; do mv $f $f.dat; done")
  shell(f"{monitor} {level_dir} &")
  return name

def setup_level_99_su_kill(names):
  lvl="level_99_su_kill"
  level_dir = f"{USER_HOME}/{lvl}"
  readme=f"{lvl}/README.md"
  shell(f"mkdir {level_dir}")
  shell(f"cp {readme} {level_dir}")
  return None

if __name__ == '__main__':
  main(sys.argv[1:])            # remove script name from args
  
