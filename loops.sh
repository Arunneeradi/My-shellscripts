#!/bin/bash
USERID=$(id -u)
if [ $USERID -eq 0 ]
then
echo "root user"
else
exit 1
echo "provide root access"
fi

#conditions statemnt passing and if,else.then

VALIDATE(){
if [ $? -ne 0 ] ;then  #ekkada mathram check chesuko neeku script lo ekkada ina error vasthe ekkada check chesuko main edi
echo "$? ... FAILED"  #ekkada $1 or $2 ane pettukovachu shiva $2 pass chesadu
exit 1
else
echo "$? ..SUCCESS"  #ekkada $1 or $2 ane pettukovachu shiva $2 pass chesadu
fi
}

for PACKAGE in $@ #git vim net-tools
do
 yum install $PACKAGE -y
 VALIDATE $? "PACKAGE INSTALLATION"
done
#own ga okkasari  inka loops rayu
