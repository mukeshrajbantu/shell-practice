#!/bin/bash
#sudo id -u = 0
USERID=$(id -u) #condition
if [ $USERID -ne 0 ]; then
    echo "Please run the script with root access"
    exit 1
fi
#FUCN_NAME= arg-1 arg-2
#First arg= what are you installing.
#second arg= exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then 
    echo "Installing $1 is ... FAILED"
    exit 1
else 
    echo "Installing $1 is ..... SUCCESSs"
fi
}
    echo "I'm continuing"
    dnf list installed mysql
if [ $? -eq 0 ]; then
    echo "MySQL is already isntalled.... SKIPPING"
else
    echo "Intall MySQL"
    dnf install mysql -y
VALIDATE MySQL $?
fi

    echo "I'm continuing"
    dnf list installed nginx
if [ $? -eq 0 ]; then
    echo "Nginx is already installed...SKIPPING"
else 
    echo "Insatlling nginx"
    dnf install nginx -y
fi
VALIDATE nginx $?
