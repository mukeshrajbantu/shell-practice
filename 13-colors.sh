#!bin/bash
#sudo id -u = 0
USERID=$(id -u) #condition
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOG_DIR/$0.log" 
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
R="\e[30m"  #-e on every statement to enable the colors.
G="\e[31m"
Y="\e[32m"
N="\e[0m" 
if [ $USERID -ne 0 ]; then
    echo "Please run the script with root access"
    exit 1
fi
#FUCN_NAME= arg-1 arg-2
#First arg= what are you installing.
#second arg= exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then 
    echo -e "$TIMESTAMP [ERROR] Installing $1 is ... $R FAILED $N" | tee -a $LOGS_FILE
    exit 1
else 
    echo -e "$TIMESTAMP [INFO] Installing $1 is ..... $G SUCCESS $N" | tee -a $LOGS_FILE
fi
    }

    
for package in $@
    do
        echo "$TIMESTAMP [INFO] Installing $package"
        dnf list installed $package &>> $LOGS_FILE
        if [ $? -ne 0 ]; then
        echo -e "$TIMESTAMP [INFO] $package already installed...$Y SKIPPING $N"
        else
        dnf install $package -y &>> $LOGS_FILE
        VALIDATE "Installing $package" $?
        fi
    done 