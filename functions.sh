#!/bin/bash

function pow {
    result=$(( $1 ** $2 ))
    echo $result 
}

function shortest {
    params=("$@")
    str_length=${#params[0]}

    for (( n = 0; n < $#; n++)) ; do
        if (( ${#params[$n]} == $str_length ))
            then
                short_param+=(${params[$n]})
        elif
            (( ${#params[$n]} < $str_length ))
            then
                str_length=${#params[$n]}
                short_param=()
                short_param+=(${params[$n]})
        fi
    done

    for item in ${short_param[@]}
    do
        echo $item
    done
}

function print_log {
    echo "[$(date +"%Y-%m-%d %H:%M")] $1"
}

# Put your code here
