##########################
## Author : Hanu
##########################
#!/bin/bash
 echo "Process Id Of Current Script : ${$}"
 sleep 60 &
 echo "process id previous background : ${!}"