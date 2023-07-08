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
if [ $1 -ne 0 ] ;then  #ekkada mathram 
echo "$1 ... FAILED"  #ekkada $1 or $2 ane pettukovachu shiva $2 pass chesadu
exit 1
else
echo "$1 ..SUCCESS"  #ekkada $1 or $2 ane pettukovachu shiva $2 pass chesadu
fi
}

yum install yum -y

VALIDATE $? "WGET installed"
#validate function ani evvakunda em kadhu isthe SUCCESS ani INSTALLED ani chupisthadi anthe 
#ledhante complete! ani chupisthadi 
#ekkada $1 kuda evvachu valdiate $? place lo  
#pina ela pass chesthe ekkada kuada alane evali $1 arguments ledha 
#defaul validate $? edi kuda evachu see excample down
yum install nginx -y

VALIDATE $? "GIT installed"

yum install tree -y

VALIDATE $? "HTTPD installed"

#=========================================================================================================================
#excample
#this the excample  #!/bin/bash
#USERID=$(id -u)
#if [ $USERID -eq 0 ]
#then
#echo "root user"
#else
#exit 1
#echo "provide root access"
#fi

#conditions statemnt passing and if,else.then

#VALIDATE(){
#if [ $? -ne 0 ] ;then
#echo "$? ... FAILED"
#exit 1
#else
#echo "$? ..SUCCESS"
#fi
#}

#yum install wget -y
#VALIDATE $? "wget installed"
#yum install nginx -y
#VALIDATE $? "nginx installed"
#yum install httpd -y
#VALIDATE $? "httpd installed"
#yum install vim -y
#VALIDATE $? "vim installed"
#yum install openssh-server -y
#VALIDATE $? "sshd installed"
#edi own ga rasanu kenda excample
