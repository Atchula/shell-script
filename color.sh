###################################
## Author : Hanu
## Date   : 07-05-2024
###################################
#!bin/bash

# COLORS 

red="\e[31m"
green="\e[32m"

# Get User Details
USER=$(id -u)  

LOGFILE="/tmp/$(echo $0 | cut -d "." -f1)-$(date +%F-%H-%M-%S).log"
echo "$LOGFILE"

# Function To Check User Admin or Not
VALIDATE_USER()
{

if [ ${USER} == 0 ]
then 
  echo -e "${green} Admin,Proceed"
else
  echo -e "${red} Running without previliges,Contact Admin"
  exit 1
fi

}

# Calling Validate User
VALIDATE_USER

 VALIDATE_PACKAGE()
{

   if [ $1 == 0 ] 
   then 
     echo -e  "${red} $2 Installed Success"  
  else
     echo -e "${green} $2 Installed Failure"
     exit 1
   fi

}


# # Install Package 
 dnf install nginx -y  &>> $LOGFILE

 VALIDATE_PACKAGE $? "Nginx"


