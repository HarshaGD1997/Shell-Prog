#!/bin/bash

echo "1. List files" #List files and directory 
echo "2. Present working directory" #PWD present working directory full path (absolute path
echo "3. OS information " #displays detail about OS installed
echo "4. User" #current user name
echo "5. Date" #Displays date and time
echo "6. Process details" #Process details along with process ID and other information
echo "7. Uptime" #How long the system is up 
echo "8. Network interfaces" #ifconfig in debian based ip addr in arch/fedora displays the network interface details
echo "9. Memory" #df -h display information about disk space usage of mounter file systems
echo "10.Who" #Users logged into the system, including login name and terminal logged into



read choice

case $choice in
	1) ls -la;;
	2) pwd;;
	3) uname -a;;
	4) whoami;;
	5) date;;
	6) ps aux;;
	7) uptime;;
	8) ip addr;;
	9) df -h;;
	10) who;;
	*)echo "Invalid choice"
esac
