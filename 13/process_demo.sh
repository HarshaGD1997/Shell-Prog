#!/bin/bash

show_menu(){
	echo -e "\n------------------------\n"
	echo "1. Create zombie process"
	echo "2. Create orphan process"
	echo "3. exit"
	echo -e "\n------------------------\n"
}


create_zombie(){
	echo -e "\ncreating zombie process\n"
	{
		echo "child (PID $$) running"
		exit 0
	} &

	child_pid=$!
	echo "Parent (PID $$) sleeping for 10 seconds without waiting for child"
	sleep 10
	
}

create_orphan(){
	echo -e "\n creating orphan process\n"
	{
		sleep 5
		echo "orphan child (PID $$) running with new parent (PID: $(ps -o ppid= -p $$))"
	} &

	echo "parent (PID $$) exiting before child finishes"
	exit 0

}


while true; do
	show_menu
	echo "Enter choice"
	read choice

	case $choice in
		1) create_zombie ;;
		2) create_orphan ;;
		3) echo "Exiting .."; break ;;
		*) echo "Invalid choice" ;;
	esac
done


