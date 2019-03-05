#!/bin/bash
confirm () {
    # call with a prompt string or use a default
    read -r -p "${1:-Are you sure? [y/N]} " response
    case $response in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}
if (confirm "Are you sure you want to completely destroy this machine?")
then
#	cd ${0%/*}
	cd ./box/vagrant
	echo "vagrant destroy"
	vagrant destroy --force
	cd ../../
	echo "rm -rf box"
	rm -rf ./box
	echo "machine destroyed"
	sleep 1s
else 
	echo "nothing destroyed"
	sleep 1s
fi
