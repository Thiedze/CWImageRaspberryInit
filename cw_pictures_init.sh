#!/bin/sh

sudo apt install -y xdotool unclutter
sudo apt -y autoremove

printf  "\n\nsudo raspi-config"
printf  "\n1 System Options"
printf  "\nS5 Boot / Auto Login"
printf  "\nB4 Desktop Autologin — Desktop GUI, automatically logged in as ‘pi’ user\n\n"
printf "\n%s " "Press enter to continue..."
read answer

sudo cp kiosk.sh /home/pi/
sudo cp kiosk.service /lib/systemd/system/

sudo systemctl enable kiosk.service
sudo systemctl start kiosk.service
