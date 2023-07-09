#!/bin/bash
USERID=$(id -u)
if [ $USERID -eq 0 ]
then
echo "root user"
else
echo "provide root user"
exit 1
fi

VALIDATE(){
if [ $? -ne 0 ]
then
echo "$? ....FAILED"
exit 1
else
echo "$? ...SUCCESS"
fi
}

for PACKAGE in $@
do
yum -q list installed $PACKAGE
if [ $? -ne 0 ]
then
echo "$PACKAGE ...Not installed"
yum install $PACKAGE -y
VALIDATE $? "package installation"
else
echo $PACKAGE ..."INSTALLED ALREADY"
fi
done
