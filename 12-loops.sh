#!bin/bash
#sudo id -u = 0
USERID=$(id -u) #condition
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOG_DIR/$0.log" 
TIMESTAMP=$(date +%Y-%m-%d %H:%M:%S) 
if [ $USERID -ne 0 ]; then
    echo "Please run the script with root access"
    exit 1
fi
#FUCN_NAME= arg-1 arg-2
#First arg= what are you installing.
#second arg= exit code
VALIDATE(){
    if [ $2 -ne 0 ]; then 
    echo "$TIMESTAMP [ERROR] Installing $1 is ... FAILED" | tee -a $LOGS_FILE
    exit 1
else 
    echo "$TIMESTAMP [INFO] Installing $1 is ..... SUCCESS" | tee -a $LOGS_FILE
fi
    }

    
for package in $@
    do
        echo "$TIMESTAMP [INFO] Installing $package"
        dnf list installed $package &>> $LOGS_FILE
        if [ $? -ne 0 ]; then
        echo "$TIMESTAMP [INFO] $package already installed...SKIPPING"
        else
        dnf install $package -y &>> $LOGS_FILE
        VALIDATE "Installing $package" $?
        fi
    done 
#     echo "I'm continuing"
#     dnf list installed mysql
# if [ $? -eq 0 ]; then
#     echo "MySQL is already isntalled.... SKIPPING"
# else
#     echo "Intall MySQL"
#     dnf install mysql -y
# VALIDATE MySQL $?
# fi

#     echo "I'm continuing"
#     dnf list installed nginx
# if [ $? -eq 0 ]; then
#     echo "Nginx is already installed...SKIPPING"
# else 
#     echo "Insatlling nginx"
#     dnf install nginx -y
# fi
# VALIDATE nginx $?
