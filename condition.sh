#######################
## Author : Hanu
## Date   : 06-05-2024
## Desc   : Check User Is Root Or Not
##########################
#!/bin/bash
USER=$(id -u)

validate()
{

  if [ ${1} != 0 ]
then 
  echo "Installation of $2..... SUCESSS"
  exit 1
else
  echo "Installation of $2.....FAILURE"
fi

}

if [ ${USER} == 0 ]
then
     echo "Admin,Proceed"
else
     echo "Script Running without Admin,Aborted!!!"
     exit 1
fi


dnf install mysql -y

validate ${?} "mysql"

dnf install git -y 

validate ${?} "git"