#!/bin/bash

DEBUG=1
SEED=12345
# perform basic setup in the setup-files directory
cd setup-files

mv bashrc.root.sh /root/.bashrc
useradd -s /usr/bin/bash -m -g users paladin
# -s /usr/bin/bash : specify shell, bash preferred
# -m : create a home directory for user
# -g users : add to group "users"
mv bashrc.user.sh /home/paladin/.bashrc
python3 setup.py $SEED
chmod -R og-rwX .               # remove permissions on setup files

rootpass=$(cat rootpass.txt)    # grab root password from the file created during setup
echo "root:$rootpass" | chpasswd

if [[ "$DEBUG" == "1" ]]; then    # if debugging, show the root password
    echo "root password is '$rootpass'"
fi

cd /                            # start the daemon process
./daemon &

cd ~paladin                     # change to user home 
chown -R paladin .              # set permissions for whole home directory
chgrp -R users .                # set group for whole home directory
su paladin                      # give user control

# ascii art by jgs
# pass: https://www.asciiart.eu/food-and-drinks/drinks
# fail: https://www.asciiart.eu/mythology/devils

if [[ -z $(pgrep daemon) ]]; then
    cat /setup-files/winmsg.txt
else
    cat /setup-files/failmsg.txt
fi
