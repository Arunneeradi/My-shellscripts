#!/bin/bash
USERID=$(id -u)
if [ $? -eq 0 ]
then
echo "root user"
exit 1
else
echo "provide root access"
fi
