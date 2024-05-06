####################
## Author : Hanu
###################
#!/bin/bash

# Declaring Menu
menu=("IDLY" "DOSA" "SAMBAR" "CHUTNEY")

# Printing First Item
echo "First Item Is : ${menu[0]}"

# Printing Last Item
echo "Last Item Is : ${menu[3]}"

# Printing All Items
echo "All Items Are : ${menu[@]}"