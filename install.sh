#!/bin/bash

echo -e '[*] One-Lin3r - https://github.com/D4Vinci/One-Lin3r'
echo -e '[*] Installing One-Lin3r (one-lin3r -h)'
apt install -y libncurses5-dev
pip3 install ./One-Lin3r
echo -e ''

echo -e '[*] SecLists - https://github.com/danielmiessler/SecLists'
echo -e '[*] Copying SecLists to /opt/SecLists'
mkdir -p /opt
cp -R ./SecLists /opt/
echo -e ''

echo -e '[*] LinEnum - https://github.com/rebootuser/LinEnum'
echo -e '[*] Copying LinEnum to /opt/LinEnum'
mkdir -p /opt
cp -R ./LinEnum /opt/
chmod +x /opt/LinEnum/LinEnum.sh
echo -e ''

echo -e '[*] PSPY - https://github.com/DominicBreuker/pspy (version 1.0)'
echo -e '[*] Copying pspy binaries to  to /opt/pspy'
mkdir -p /opt/pspy
cp -R ./pspy /opt/
chmod +x /opt/pspy/*
echo -e ''

echo -e '[*] PowerSploit - https://github.com/PowerShellMafia/PowerSploit'
echo -e '[*] Copying PowerSploit to /opt/PowerSploit'
mkdir -p /opt
cp -R ./PowerSploit /opt/
echo -e ''

echo -e '[*] nishang - https://github.com/samratashok/nishang'
echo -e '[*] Copying nishang to /opt/nishang'
mkdir -p opt
cp -R ./nishang /opt/
echo -e ''
