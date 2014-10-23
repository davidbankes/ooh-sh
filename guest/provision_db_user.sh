#!/bin/bash

if [ -z "$1" ]; then
    echo "Need to set 1"
    exit 1
fi  

Project=$1
source /home/vagrant/projects/sh/config.sh
ThisProjectConn="${GuestProjectsPath}/${Project}/www/includes/conn.php"
incase='false'
while read line
do
	if [ "$incase" == 'true' ]
		then 
			echo 'incase'
			if [[ $line =~ break\; ]]
				then
					incase='false';
					echo 'exiting case';
			fi
		else
			#caseness=$(grep -c 'local.spiiider.com' $line);
			if [[ $line =~ case\ \'local\.spiiider\.com\': ]]
				then
					incase='true'
					echo 'entering case';
			fi
	fi
	echo $line
done <"${ThisProjectConn}"

exit
