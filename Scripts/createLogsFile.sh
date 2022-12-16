#!/bin/bash

#date and hour
d=$(date +"%e-%m-%Y-%HH%M")
#Filename will contain date and hour
file="AllLogs-$d"

#Go to the backup dir
cd /home/server/backup/

#Create logs (html and text)
logwatch --detail high --output file --format text --filename $file.txt
logwatch --detail high --output file --format html --filename $file.html

#Archive and compress (to the backup dir)
tar -czvf /home/server/backup/$file.txt.tar.gz $file.txt
tar -czvf /home/server/backup/$file.html.tar.gz $file.html

#Change owner of compressed archive
chown server /home/server/backup/$file.txt.tar.gz
chown server /home/server/backup/$file.html.tar.gz

#rm unarchived logs
rm $file.txt
rm $file.html
