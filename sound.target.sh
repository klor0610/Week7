#!/bin/bash
#a few chapter 6 commands
echo ""
echo "updates currently in place for system"
echo "hit enter to continue"
read
sudo apt-get update
sudo apt-get install systemd
sleep 3s
#shows list of all active units
systemctl list-units
echo ""
echo "press enter to view the status of sound.target unit"
read

sudo systemctl start sound.target

sudo systemctl stop sound.target
#shows that service is now inactive
systemctl status sound.target
#restarts service
sudo systemctl restart sound.target
#gets status of a specific unit, in this case, sound.target should be active
systemctl status sound.target
