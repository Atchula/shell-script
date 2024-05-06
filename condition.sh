#######################
## Author : Hanu
## Date   : 06-05-2024
## Desc   : Check User Is Root Or Not
##########################
#!/bin/bash

# Checking User Is Root Or Not
CURRENTUSER=$1

if [ $((CURRENTUSER)) -ne 'root' ]
then
    echo "User Is NOT Root"
else
    echo "User Is Root"
fi