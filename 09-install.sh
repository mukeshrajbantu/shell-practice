#!/bin/bash
#sudo id -u = 0
# USERID=$(id -u) #condition 
# #check root acceses or not.
# if [ $USERID -ne 0 ]; then
#     echo "Please run this script with root access"
#     exit 1
# fi
#     #echo "I'm continuing" 
#     echo "Install MySQL"
#     dnf install mysql -y 
# if [ $? -ne 0 ]; then 
#     echo "Insatalling MySQL is..... FAILED"
#     exit 1
# else 
#     echo "Installing MySQL is........ SUCCESS"
# fi
USERID=$(id -u) #condition
if [ $USERID -ne 0 ]; then
    echo "Please run the script with root access"
    exit 1
fi
    echo "I'm continuing"
    echo "Intall MySQL"
    dnf instl mysql -y
if [ $? -ne 0 ]; then 
    echo "Installing mysql is ... FAILED"
    exit 1
else 
    echo "Installing MySQL is ..... SUCCESSs"
fi
