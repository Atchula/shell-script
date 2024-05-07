#######################################
### Author : Hanu
### Date   : 07-05-2024
#######################################
#!/bin/bash

# Getting User Details
USER=$(id -u)

# Log File Creation
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=${0}
LOGFILE=${SCRIPTNAME}-${TIMESTAMP}.log

# Declaring Function To Validate
VALIDATE()
{
    if [ $1 == 0 ]
    then 
       echo "Admin,Proceed"
    else
       echo "Run with Admin Access!!!!"
       exit 1
    fi
}

# Calling Validate Function To Check User Admin Or NOt
VALIDATE ${USER}
echo "LOGFILE : ${LOGFILE}"





