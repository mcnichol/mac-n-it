#!/usr/bin/env bash

msg(){
    if [ -n "$2" ]; then
	echo -e $2"Bash:\t$1 ${NO_COLOUR}"
    else 
	echo -e ${WHITE}"Bash:\t$1 ${NO_COLOUR}"
    fi
}

newsect(){
    echo ""
    msg "$1" ${GREEN}
}
