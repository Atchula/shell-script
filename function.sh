#######################################
### Author : Hanu
### Date   : 07-05-2024
#######################################
#!/bin/bash

# Getting User Details
USER=$(id -u)

# Log File Creation
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo ${0} | cut -d "." -f1)
LOGFILE=/tmp/${SCRIPTNAME}-${TIMESTAMP}.log

# Declaring Function To Validate
VALIDATE_USER()
{
    if [ $1 == 0 ]
    then 
       echo "Admin,Proceed"
    else
       echo "Run with Admin Access!!!!"
       exit 1
    fi
}

VALIDATE_PACKAGE()
{
   
   if [ $1 == 0 ]
   then  
     echo "${2} Installation.....Success..Check Log File ${LOGFILE}"
   else
     echo "${2} Installation....Failure..Check Log File ${LOGFILE}"
   fi
}

# Calling Validate Function To Check User Admin Or NOt
VALIDATE_USER ${USER}
echo "LOGFILE : ${LOGFILE}"


# Installing Package
dnf install nginx -y  &>> ${LOGFILE}

# Validate Package
VALIDATE_PACKAGE $? "NGINX"







