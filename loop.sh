#############################################
##### Author : Hanu
##### Date   : 07-05-2024
#############################################
#!/bin/bash

# Colors

red="\e[31m"
green="\e[32m"
normal="\e[0m"

# Declare Packages
packages=("mysql" "nginx" "mysql-server")

# Create LOGFILE
LOGILE="/tmp/$(echo $0 | cut -d "." -f1)-$(date +%F-%H-%M-%S).log"

# Checking Package

validate_package()
{
if [ $1 == 0]
then 
  echo -e "$red $2 Installation Success $normal"
else
  echo -e "$green $2 Installation Failure $normal" 
fi

}


for item in ${packages[@]}
do
dnf install $item -y &>> $LOGFILE
validate_package $? "$item"
done