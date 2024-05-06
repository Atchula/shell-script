##################################
## Author : Hanu
## Date   : 06-05-2024
##################################
#!/bin/bash

## Special Variables

# Print All Args
echo "All Args: ${@}"

# Print No Of Args
echo "Number Of Args: ${#}"

# Print CWD
echo "CWD is: ${PWD}"

# Print HOME 
echo "HOME is :${HOME}"

# print USER RUNNING
echo "USER Running : ${USER}"

# Print Script Name
echo "Script : ${0}"

# Print Process
echo "Process : ${$}"

sleep 60 &

# Print Previous
echo "Background : ${!}"

# Execute Status
echo "Execute : ${?}"

