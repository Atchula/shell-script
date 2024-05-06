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
fi
dnf install mysql -y