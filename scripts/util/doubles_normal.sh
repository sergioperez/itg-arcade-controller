#!/bin/bash
itg_static_path="/home/sergio/Static.ini"
sed -i "s/^Theme.*/Theme=$1/" $itg_static_path

