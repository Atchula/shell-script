#######################
## Author : Hanu
## Date   : 06-05-2024
## Desc   : Check User Is Root Or Not
##########################
#!/bin/bash

# Checking User Is Root Or Not
CURRENTUSER=${USER}
if [ $((CURRENTUSER)) -eq root ]
then
    echo "User Is Root"
else
    echo "User Is Not Root"
fi