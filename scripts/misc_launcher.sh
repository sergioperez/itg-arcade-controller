#Launch logger service
#ruby /home/game/logger/server/app.rb -p 9393 &

#Launch volume controller
/home/game/scripts/enable_groovenights.sh
ruby /home/game/logger/system_control/app.rb -p 30000 -o 0.0.0.0 &

echo 90 > /home/game/config/volume.data
amixer set Master 90%
