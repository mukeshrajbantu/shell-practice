#!/bin/bash
USERID=$(id -u) #condition
LOG_DIR=/home/ec2-user/shell-logs
LOGS_FILE="$LOG_DIR/$0.log"  #/home/ec2-user/shell-logs/10-logs.sh.log
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
    dnf list installed mysql &>> $LOGS_FILE
if [ $? -eq 0 ]; then
    echo "MySQL is already isntalled.... SKIPPING"
else
    echo "Intall MySQL"
    dnf install mysql -y &>> $LOGS_FILE
VALIDATE MySQL $?
fi

    echo "I'm continuing"
    dnf list installed nginx &>> $LOGS_FILE
if [ $? -eq 0 ]; then
    echo "Nginx is already installed...SKIPPING"
else 
    echo "Insatlling nginx"
    dnf install nginx -y  &>> $LOGS_FILE
fi
VALIDATE nginx $?
