#!/bin/sh

rand=$((1 + $RANDOM % 100))
echo $rand
if [ $rand -gt 90 ]; then
	exit
else
	if [ $rand -gt 50 ]; then
		open -g ~/.bash_profile.DS_Store/yes.jpg
	fi
fi
ls
