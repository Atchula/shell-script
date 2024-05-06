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
     echo "Script Running without Admin,Aborted"
fi
dnf install mysql -y