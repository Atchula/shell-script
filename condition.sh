#######################
## Author : Hanu
## Date   : 06-05-2024
## Desc   : Check User Is Root Or Not
##########################
#!/bin/bash

# Checking User Is Root Or Not
declare CURRENTUSER=$1

echo "CURRENT  USER IS : ${CURRENTUSER}"

if [ ${CURRENTUSER} != root ]
then
    echo "User Is NOT Root"
else
    echo "User Is Root"
fi