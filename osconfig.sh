#!/bin/bash

CMD=$1

help() {

	echo -en ""
	echo -en ""
	echo -en ""
	echo -en ""

}

main() {

	case $CMD in
		"-h")
			help;;
		*)
			help;;
	esac

}

main
