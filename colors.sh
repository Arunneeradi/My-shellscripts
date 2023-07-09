#!/bin/bash
if [ $? -eq 0 ]
DATE=$(date +"%F %H:%M:%S")
LOG_FILE="$DATE.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"
then
 echo "root user"
else
 echo "provide root user"
exit 1
fi

VALIDATE(){
if [ $1 -ne 0 ]
then
echo -e "$2... $R FAILED $N"
exit 1
else
echo  -e "$2... $G SUCCESS $N"
fi   
}

yum install http* -y &>>$LOG_FILE
VALIDATE $? "http* installation"
yum install tree -y &>>$LOG_FILE
VALIDATE $? "tree* installation"
yum install vim -y &>>$LOG_FILE
VALIDATE $? "vim installation"
yum install net-tools -y &>>$LOG_FILE
VALIDATE $? "net-tools installation"
