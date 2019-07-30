#!/bin/bash
echo "Copying 10-local.rules into rules.d"
sudo cp 10-local.rules /etc/udev/rules.d/

echo "Creating interfaces.d/can0"
echo "auto can0" > can0
echo "iface can0 inet manual" >> can0
echo "  pre-up /sbin/ip link set can0 type can bitrate 1000000" >> can0
echo "  up /sbin/ifconfig can0 up" >> can0
echo "  down /sbin/ifconfig can0 down" >> can0
sudo mv can0 /etc/network/interfaces.d
