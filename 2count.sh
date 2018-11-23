#!/bin/bash
function co() {
	c=$1
	c=$((c+1))
	source ./setbit.sh
	if [ $c -eq 16 ];then
	c=0;
	gpio write 4 1;sleep 1;gpio write 4 0;
	fi
	setbit $c
	for pin in {0..3}
do
	gpio write $pin ${bit[$pin]}
done		
	return $c	
}
