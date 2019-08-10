#!/bin/bash

hotwax_folder=$(pwd)

# Remove the previous block of HOTWAX aliases
sed -i '/### HOTWAX BEGIN ###/,/### HOTWAX END ###/d' ~/.bashrc

# Start the new block of HOTWAX aliases
echo '### HOTWAX BEGIN ###' >> ~/.bashrc

echo -e '[*] Python2, Python3 virtualenvs'
echo -e '[*] Ensure we have the two relevant versions of python, and their respective pips are up to date.'
apt install -y python3.7 python3-pip python2.7 python-pip
python3 -m pip install -U pip
python2 -m pip install -U pip

echo -e '[*] Create the two relevant virtual environments (~/virtualenv/python2, ~/virtualenv/python3)'
mkdir ~/virtualenv
cd ~/virtualenv
pip3 install virtualenv
virtualenv -p python3 python3
virtualenv -p python2 python2

echo -e "[*] Deploy the changes to the user's .bashrc (COMMANDS: activate_python2, activate_python3, deactivate)"
cat << EOF >> ~/.bashrc
alias activate_python2='source ~/virtualenv/python2/bin/activate'
alias activate_python3='source ~/virtualenv/python3/bin/activate'
source ~/virtualenv/python3/bin/activate
EOF
source ~/virtualenv/python3/bin/activate
echo -e ''

echo -e '[*] One-Lin3r - https://github.com/D4Vinci/One-Lin3r'
echo -e '[*] Installing One-Lin3r (one-lin3r -h)'
apt install -y libncurses5-dev
source ~/virtualenv/python3/bin/activate
pip3 install ${hotwax_folder}/One-Lin3r
echo -e ''

echo -e '[*] SecLists - https://github.com/danielmiessler/SecLists'
echo -e '[*] Copying SecLists to /opt/hotwax/SecLists'
mkdir -p /opt/hotwax
cp -R ${hotwax_folder}/SecLists /opt/hotwax/
echo -e ''

echo -e '[*] LinEnum - https://github.com/rebootuser/LinEnum'
echo -e '[*] Copying LinEnum to /opt/hotwax/LinEnum'
mkdir -p /opt/hotwax
cp -R ${hotwax_folder}/LinEnum /opt/hotwax/
chmod +x /opt/hotwax/LinEnum/LinEnum.sh
echo -e ''

echo -e '[*] PSPY - https://github.com/DominicBreuker/pspy (version 1.0)'
echo -e '[*] Copying pspy binaries to to /opt/hotwax/pspy'
mkdir -p /opt/hotwax
cp -R ${hotwax_folder}/pspy /opt/hotwax/
chmod +x /opt/hotwax/pspy/*
echo -e ''

echo -e '[*] PowerSploit - https://github.com/PowerShellMafia/PowerSploit'
echo -e '[*] Copying PowerSploit to /opt/hotwax/PowerSploit'
mkdir -p /opt/hotwax
cp -R ${hotwax_folder}/PowerSploit /opt/hotwax/
echo -e ''

echo -e '[*] nishang - https://github.com/samratashok/nishang'
echo -e '[*] Copying nishang to /opt/hotwax/nishang'
mkdir -p /opt/hotwax
cp -R ${hotwax_folder}/nishang /opt/hotwax/
echo -e ''

echo -e '[*] Sherlock - https://github.com/sherlock-project/sherlock'
echo -e '[*] Copying sherlock to /opt/hotwax/sherlock'
mkdir -p /opt/hotwax
cp -R ${hotwax_folder}/sherlock /opt/hotwax/
echo -e '[*] Installing sherlock (COMMAND: sherlock -h)'
source ~/virtualenv/python3/bin/activate
python3 -m pip install -r /opt/hotwax/sherlock/requirements.txt
echo -e '[*] Adding sherlock alias to ~/.bashrc'
echo "alias sherlock='python3 /opt/hotwax/sherlock/sherlock.py'" >> ~/.bashrc
source ~/.bashrc
echo -e ''

echo -e '[*] AutoRecon - https://github.com/Tib3rius/AutoRecon'
echo -e '[*] Copying AutoRecon to /opt/hotwax/AutoRecon'
mkdir -p /opt/hotwax
cp -R ${hotwax_folder}/AutoRecon /opt/hotwax/
echo -e '[*] Setting up AutoRecon Dependencies'
python3 -m pip install -r /opt/hotwax/AutoRecon/requirements.txt
echo -e ''

echo -e '[*] Windows PHP Reverse Shell - https://github.com/Dhayalanb/windows-php-reverse-shell'
echo -e '[*] Copying Windows PHP Reverse Shells to /opt/hotwax/WindowsPHPReverseShell'
mkdir -p /opt/hotwax
cp -R ${hotwax_folder}/WindowsPHPReverseShell /opt/hotwax/
echo -e ''

echo -e '[*] OSCP Exam Report Template - https://github.com/whoisflynn/OSCP-Exam-Report-Template'
echo -e '[*] Copying OSCP Exam Report Template to /opt/hotwax/OSCPExamTemplate'
mkdir -p /opt/hotwax
cp -R ${hotwax_folder}/OSCPExamTemplate /opt/hotwax/
echo -e ''

### Non-Python Template
#echo -e '[*] NEWPACKAGE - https://github.com/newcontributor/newpackage'
#echo -e '[*] Copying NEWPACKAGE to /opt/hotwax/NEWPACKAGE'
#mkdir -p /opt/hotwax
#source ~/virtualenv/python2/bin/activate
#cp -R ${hotwax_folder}/NEWPACKAGE /opt/hotwax/
#<add any required aliases to ~/.bashrc here>
#echo -e ''

### Python3 Template
#echo -e '[*] NEWPACKAGE - https://github.com/newcontributor/newpackage'
#echo -e '[*] Copying NEWPACKAGE to /opt/hotwax/NEWPACKAGE'
#mkdir -p /opt/hotwax
#source ~/virtualenv/python3/bin/activate
#<copy your package under /opt/hotwax, or install your python package here>
#<add any required aliases to ~/.bashrc here>
#echo -e ''

### Python2 Template
#echo -e '[*] NEWPACKAGE - https://github.com/newcontributor/newpackage'
#echo -e '[*] Copying NEWPACKAGE to /opt/hotwax/NEWPACKAGE'
#mkdir -p /opt/hotwax
#source ~/virtualenv/python2/bin/activate
#<copy your package under /opt/hotwax, or install your python package here>
#<add any required aliases to ~/.bashrc here>
#echo -e ''

# Close the new block of HOTWAX aliases
echo '### HOTWAX END ###' >> ~/.bashrc

echo '[*****************************]'
echo '[ All done, please run:       ]'
echo 'source ~/.bashrc'
echo '[*****************************]'
