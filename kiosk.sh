#!/bin/bash

echo "sleep"
sleep 60

echo "xset"
xset s noblank
xset s off

echo "unclutter"
unclutter -idle 0.5 -root &


echo "chromium preferences"
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

echo "start browser in kiosk mode"
/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk https://bilder.campuswoche.de/showpi

# while true; do
   # xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
   # sleep 10
# done
