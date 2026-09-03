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
if [ $? -ne 0 ]; then
    echo "Installing nginx is... FAILED"            #checking whether mysql is already installed or not.
    exit 1
    else 
    echo "Installing nginx is... SUCCESS"
fi
dnf list installed nginx
if [ $? -ne 0 ]; then
    echo "nginx is already installed... SKIPPING"
    exit 1
    else 
    echo "Installing nginx"
fi
dnf install nginx -y

