#!/bin/bash
function init {
	for pin in {0..4} 
	do
        	gpio mode $pin out
        	gpio write $pin 0
	done
gpio mode 5 in
gpio mode 5 up
}
init
