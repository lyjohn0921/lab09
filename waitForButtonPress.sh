#!/bin/bash
function wait(){

        while [ 1 == 1 ]
        do
                until test `gpio read 5` -eq 0;do
		gpio read 5 >/dev/null;
                done
                while test `gpio read 5` -eq 0;do
		echo pressed >/dev/null;
                done
		echo "pressed"
		return 0
                done
}
