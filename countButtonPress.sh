#!/bin/bash
function count() {
	c=$1
	echo  "c is $c"
	let "c=$c+1"
	. ./setbit.sh $c
	if [ $c -eq 16 ]
	then
		c=0;gpio write 4 1; sleep 1;gpio write 4 0;
	fi
	echo "bit is ${bit[@]}";
	for pin in {0..3}
	do
		gpio write $pin	${bit[$pin]}
	done
	echo "increasing c is $c"
	return $c
}
c=$1
echo "c before call is $c"
count $c
c=$?
