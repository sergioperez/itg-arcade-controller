#!/bin/bash
itg_static_path="/home/game/itg/Data/Static.ini"
itg_gameprefs_path="/home/game/itg/Data/GamePrefs.ini"
sed -i "s/^Theme.*/Theme=GrooveNights 2014/" $itg_static_path
sed -i "s/^Theme.*/Theme=GrooveNights 2014/" $itg_gameprefs_path

