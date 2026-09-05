#!bin/bash
#sudo id -u = 0
USERID=$(id -u) #condition
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access."   #checking to run with root acccess
    exit 1
fi
#FUCN_NAME= arg-1 arg-2
#first arg -> what are you installing.
#second arg -> exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then 
        echo "Installing $1 is... FAILED"
        exit 1
        else 
        echo "Installing $1 is... SUCCESS"
    fi
}

    #echo "I'm continuing..."
dnf list installed mysql 
if [ $? -eq 0 ]; then
    echo "MySQL is already installed...SKIPPING"
    else
    echo "Installing MySQL"

dnf install mysql -y 
#to check if mysql is success or not
VALIDATE MySQL $?
fi

dnf list installed nginx
if [ $? -eq 0 ]; then
    echo "nginx is already installed...SKIPPING"
    else 
    echo "Installing nginx"
dnf isntall nginx -y
#check if it is success or not.
VALIDATE nginx $?
fi
