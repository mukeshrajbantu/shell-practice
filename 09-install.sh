#!/bin/bash
#sudo id -u = 0
USERID=$(id -u) #condition 
#check root acceses or not.
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi
    #echo "I'm continuing" 
    echo "Install MySQL"
    dnf install mysql -y 
if [ $? -ne 0 ]; then 
    echo "Insatalling MySQL is..... FAILED"
    exit 1
else 
    echo "Installing MySQL is........ SUCCESS"
fi

