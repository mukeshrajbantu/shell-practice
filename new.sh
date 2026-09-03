#!bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access."   #checking to run with root acccess
    exit 1
fi

    #echo "I'm continuing..."
echo "Installing MySQL"
dnf install sssmysql -y 
#to check if mysql is success or not
if [ $? -ne 0 ]; then 
    echo "Installing MySQL is... FAILED"
    exit 1
    else 
    echo "Installing MySQL is... SUCCESS"
fi