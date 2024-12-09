#!/bin/bash
if [[ $(uname) != "Linux" ]]; then
	echo "Error: This script can only run on Linux sytems." >> linuxsetup.log
	exit 1
fi
mkdir -p ~/.TRASH
if [[ -f ~/.nanorc ]]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "The exsisting .nanorc file was renamed to .bup_nanorc" >> linuxsetup.log
fi
cat ./etc/nanorc > ~/.nanorc
if ! grep -Fxq "source ~/.dotfiles/etc/bashrc_custom" ~/.bashrc;
	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
fi
echo "Setup complete!" >> linuxsetup.log

