#!/bin/bash
function wait(){
	c=0;
        while [ 1 == 1 ]
        do
                until test `gpio read 5` -eq 0;do
		gpio read 5 >/dev/null;
                done
                while test `gpio read 5` -eq 0;do
		echo pressed >/dev/null;
                done
                . ./countButtonPress.sh $c
		
		echo "c in wait is $c"
        done
}
wait
