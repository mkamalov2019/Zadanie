#!/bin/bash
if [ $# -eq 2 ]; then 
 for line in `find /var/backup/ -type d`; do
   quontity=`find $line -maxdepth 1 -type f -name "*.tar.gz" -mtime +$1 |wc -l`
	if [ "$quontity" -gt $2 ]; then
	   #echo "Dir " $line " contain" $quontity files oldest than $1 day\'s
	   find /var/backup/dir_1/ -maxdepth 1 -type f -name "*.tar.gz" -mtime +$1 | xargs ls -t| tail -1| xargs rm 
	fi
 done
else
echo "Quontity param is wrong!!!"
fi
