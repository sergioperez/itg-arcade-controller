echo "Enabling freeplay"
sed -i "s/CoinMode=1/CoinMode=0/g" /home/game/itg/Data/Static.ini
killall openitg
sleep 10
sed -i "s/CoinMode=0/CoinMode=1/g" /home/game/itg/Data/Static.ini
