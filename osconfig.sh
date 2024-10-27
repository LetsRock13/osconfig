#!/bin/bash

CMD=$1
SCRIPT="osconfig"
INSTPROGS="git nvim gcc"

help() {

	echo -en "\tUsage\n"
	echo -en "\t$SCRIPT <option>\n"
	echo -en "\tOptions\n"
	echo -en "\t\t<-h> 			Calls this Help\n"
	echo -en "\t\t<-all> 		Call the complite Script\n"
	echo -en "\t\t<-upadte> 	Calls Update\n"
	echo -en "\t\t<-install> 	Calls Install\n"
}

update() {
	sudo apt update && sudo apt dist-upgrade
}

install() {
	sudo apt install $INSTPROGS
}

main() {

	case $CMD in
		"-h")
			help;;
		"-all")
			update
			install
			;;
		"-update")
			update;;
		"-install")
			install;;
		*)
			help;;
	esac

}

main
