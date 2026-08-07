#!/bin/bash
#sudo id -u = 0
USERID=$(id -u) #condition 
#check root acceses or not.
if [ $USERID -ne 0 ]; then
    echo " Please run this script with root access"
fi
    exit 1
    echo "I'm continuing" 