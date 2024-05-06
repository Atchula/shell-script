########################
## Author : Hanu    
## Date : 06-05-2024   
######################
#!/bin/bash
# Prompt For UserName and PassWord
read -p "Login As :" USERNAME
read -p "Password :" -s PASSWORD
# Print
echo ""
echo "Login Details Are : ${USERNAME}.... ${PASSWORD}"