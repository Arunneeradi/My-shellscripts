#!/bin/bash
USERID=$(id -u)
if [ $? -eq 0 ]
then
echo "root user"
else 
echo "provide root user"
exit 1

yum install vim -y
if [ $? -eq 0 ]
then
echo "install succesfully"
else
echo "install failed"
exit 1

VALIDATE(){
if [ $? -ne 0 ]
then
echo $? .."install faile"
else
exit 1 
echo $? .."install success"
fi
}
yum install vim -y
VALIDATE $? ..SUCESS"


for in packages $@
yum install $pacakges -y
validate $? $package installed
do
for in packages $@
rpm -q list packages 
then
echo "$packages -y
validate $> "package installation"
else
echo package installed"
fi
done

