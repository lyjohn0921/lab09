#!/bin/bash
c=0
source ./waitForButtonPress.sh; source ./countButtonPress.sh
echo $c
while [ 1 == 1 ];do
	wait
	echo $? $r
	if [ $? -eq 0 ];then
		count $c
	fi
done
