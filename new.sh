#!bin/bash
USERID=$(id -u)
if [ $? -ne 0 ]; then
    echo "Please run this script with root access."   #checking to run with root acccess
    exit 1
fi
