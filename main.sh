#!/bin/bash

# # Start the first process
# ./loop_sleep_print.sh 5 "Periodic Message" &

cd setup-files

mv bashrc.root.sh /root/.bashrc
useradd -s /usr/bin/bash -m -g users paladin
# -s /usr/bin/bash : specify shell, bash preferred
# -m : create a home directory for user
# -g users : add to group "users"

mv bashrc.user.sh /home/paladin/.bashrc

python3 setup.py 12345
rootpass=$(cat rootpass.txt)
echo "root password is '$rootpass'"
echo "root:$rootpass" | chpasswd
chmod -R og-rwX .               # remove permissions on setup files

cd /
./daemon &

cd ~paladin
chown -R paladin .              # set permissions for whole home directory
chgrp -R users .              # set group for whole home directory
su paladin

# # kill the periodic message
# kill %1

# # Wait for any process to exit
# wait -n

# # Exit with status of process that exited first
# exit $?
