#!/bin/bash
#$Revsion:001$
#$Date: 30/09/2023$

#Variables
BASE=/home/dharmendra/Desktop/Commands
DEPTH=1
RUN=0
DAYS=10

# Check base diractory exist or not
if [ ! -d $BASE ] 
then 
	echo "Base folder not exist: $BASE"
	exit 1
fi

#Craete arhive folder if not exist

if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#Find the list of file to archive

for i in `find $BASE -maxdepth $DEPTH -type f -size +3k`
do 
	if [ $RUN -eq 0 ]
	then
		echo "[$(date)] archiving $i ==> $BASE/archive"
		gzip $i || exit 1
		cp $i.gz $BASE/archive || exit 1
	fi

done






