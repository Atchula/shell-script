#######################################
### Author : Hanu
### Date   : 07-05-2024
#######################################
#!/bin/bash

# Getting User Details
USER=$(id -u)

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





