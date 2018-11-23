#!/bin/bash
function setbit(){
        n=$1
        for a in {0..3}
        do
                bit[a]=$((n>>a & 1))
        done
}

setbit $1
echo ${bit[0]}
echo ${bit[1]}
echo ${bit[2]}
echo ${bit[3]}

