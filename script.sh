#!/bin/bash

if ! ls initLog.txt
then
	touch initLog.txt
fi

	sudo apt-get update
	sudo apt-get upgrade

if vim --version >> initLog.txt 
then
	echo "vim already installed"
else 
	sudo apt-get install vim
fi

if git --version >> initLog.txt
then
	echo "git alread installed"
else
	sudo apt-get install git
fi

if ssh -V >> initLog.txt
then
	echo "Openssh-serve already installed"
else
	sudo apt-get install openssh-server
fi

if curl -V >> initLog.txt
then
	"Curl is already installed"
else
	sudo apt-get install curl
fi


echo " Init ZSH"

if zsh --version >> initLog.txt
then
	echo "ZSH already installed"
else
	sudo apt-get install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

fi

zsh

echo "init terminé"


