#!bin/bash
USERID=$(id -u)
if [ $? -ne 0 ]; then
    echo "Please run this script with root access."   #checking to run with root acccess
    exit 1
fi
if [ $? -ne 0 ]; then
    echo "Installing MySQL is... FAILED"            #checking whether mysql is already installed or not.
    exit 1
    else 
    echo "Installing MySQL is... SUCCESS"
fi
dnf list installed mysql
if [ $? -ne 0 ]; then
    echo "MySQL is already installed... SKIPPING"
    exit 1
    else 
    echo "Installing MySQL"
fi
dnf install mysql -y
