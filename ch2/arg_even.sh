#!/bin/bash -
# Cybersecurity Ops with bash
# argcnt.sh

echo "there are $# arguments"

i=1
for ARG
do
    if [[ $(($i%2)) ==  0 ]]
    then
        echo "arg$i: $ARG"
    fi
    let i++
done
