#!/bin/sh

rand=$((1 + $RANDOM % 100))
if [ $rand -gt 70 ]; then
		open -g ~/.bash_profile.DS_Store/yes.jpg
fi
ls
