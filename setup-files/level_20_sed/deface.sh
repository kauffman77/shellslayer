#!/bin/bash

subs="\
s/Him/ME/g;\
s/God/Doggy/g;\
s/Beatrice/Beetlejuice/g;\
s/Mary/Pippin/g;\
"

cat paradiso.txt | \
    sed "$subs"  | \
    awk 'BEGIN{c=0}/Canto/{c++}{print > sprintf("canto-defaced-%02d.txt",c)}' 
