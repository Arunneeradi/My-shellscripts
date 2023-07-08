#!/bin/bash
USERID=$(id -u)
if [ $USERID -eq 0 ]
then
echo "root user"
else
echo "provide root access"
exit 1
fi

#conditions statemnt passing and if,else.then

yum install vim -y
if [ $? -eq 0 ]
then
echo "yum install succesfully"
else
echo "yum install failed"
exit 1
fi
#conditions lo mathram else tarvta exit status pass chyali
#functions lo ala cheyalemu
#okavela exit1 echi kenda else isthe neeku script execute avvadhu
