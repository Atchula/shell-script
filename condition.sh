#######################
## Author : Hanu
## Date   : 06-05-2024
## Desc   : Check User Is Root Or Not
##########################
#!/bin/bash
USER=$(id -u)

if [ ${USER} == 0 ]
then
     echo "Admin,Proceed"
else
     echo "Script Running without Admin,Aborted!!!"
     exit 1
fi
dnf install mysql -y
if [ $? != 0 ]
then 
  echo "Installation of mysql..... FAILURE"
  exit 1
else
  echo "Installation of mysql.....SUCCESS"
fi
