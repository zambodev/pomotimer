#!/bin/zsh

if [[ ! -d $ZSH/custom/plugins/pomotimer ]];
then
	mkdir $ZSH/custom/plugins/pomotimer
fi

cp pomotimer.plugin.zsh $ZSH/custom/plugins/pomotimer/
