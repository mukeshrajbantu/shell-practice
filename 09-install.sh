#!/bin/bash
#sudo id -u = 0
USERID=$(id -u) #condition
if [ $USERID -ne 0 ]; then
    echo "Please run the script with root access"
    exit 1
fi
    echo "I'm continuing"
    dnf list installed mysql
if [ $? -eq 0 ]; then
    echo "MySQL is already isntalled.... SKIPPING"
else
    echo "Intall MySQL"
    dnf install mysql -y
    if [ $? -ne 0 ]; then 
    echo "Installing mysql is ... FAILED"
    exit 1
else 
    echo "Installing MySQL is ..... SUCCESSs"
fi
fi


    dnf list installed nginx
if [ $? -eq 0 ]; then
    echo "Nginx is already installed...SKIPPING"
else 
    echo "Insatlling nginx"
    dnf install nginx -y
fi
if [ $? -ne 0 ]; then
    echo "Installing Nginx is ..... FAILED"
    exit 1
else
    echo "Installing Nginx is... SUCCESS"
fi
