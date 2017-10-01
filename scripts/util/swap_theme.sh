#!/bin/bash
itg_static_path="/home/game/itg/Data/Static.ini"
itg_gameprefs_path="/home/game/itg/Data/GamePrefs.ini"
if [ "$1" == "" ]
	then
		echo "Syntax: ./swap_theme.sh theme_name"
	else
		sed -i "s/^Theme.*/Theme=$1/" $itg_static_path
		sed -i "s/^Theme.*/Theme=$1/" $itg_gameprefs_path
		killall openitg
		killall openitg
		killall openitg
		killall openitg
		killall openitg
		killall openitg
		killall openitg
		killall openitg
		killall openitg
		sleep 1
		killall openitg
                killall openitg
                killall openitg
                killall openitg
		killall openitg
                killall openitg
		sleep 1
                killall openitg
                killall openitg
		killall openitg
                killall openitg
                killall openitg
                killall openitg
		killall openitg
                killall openitg
                killall openitg
                killall openitg

		sed -i "s/^Theme.*/Theme=$1/" $itg_gameprefs_path
		sleep 30
		~/scripts/enable_groovenights.sh
fi

