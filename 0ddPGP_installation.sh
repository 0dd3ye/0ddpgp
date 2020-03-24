#!/bin/bash



# code to determine if script is ran as root

if [ $(id -u) != 0 ]

then
	echo "Error: This script needs to be executed by root."
	exit
fi


# code to make sure there is a root crontab

user="$(whoami)"

if [ $user != "$(ls /var/spool/cron/crontabs/ | grep $user)" ]

then
	echo "Error: You don't have a crontab set up for $user."
	echo
	echo "You can set one by executing the command sudo crontab -e"
	exit
fi



# code for verifying user has python

pythonCheck="$(python -h)"

if [ "${pythonCheck:0:13}" != "usage: python" ]

then
	echo "Error: You don't have python installed"
	echo
	echo "You can install python by using the command sudo apt-get install python"
	exit
fi


# installs sl, cuz why not? Every computer should have sl

sudo apt-get install sl


# Script to install 0ddpgp BETA


echo "Installing 0ddpgp BETA...."

#mkdir /usr/lib/0ddPGP

#cp 0ddPGP.tar.gz /usr/lib/0ddPGP/0ddPGP.tar.gz
cp 0ddpgp /usr/bin/0ddpgp


tar xzf 0ddPGP.tar.gz
cp -r 0ddPGP /usr/lib

#rm /usr/lib/0ddpgp/0ddPGP.tar.gz


echo "Installation Complete"

echo ""

echo "To use script, type 0ddpgp -h"

echo ""

echo "Only use script as root unless you know what you're doing"

echo ""

echo "To use root, type the command like sudo 0ddpgp <option>"

echo ""

echo "You may also type sudo su to go into sudo mode and not need to type sudo every time"

echo ""

echo "Remember, gpg keys aren't shared between the user and root account by default"

echo ""

dirVar=$(pwd)
echo "If the script installed properly, you may delete "$dirVar" and the original tar"

echo ""

echo "Before you do ANYTHING ELSE, enter the following command:"

echo ""

echo "sh | for i in {0..100} ; do sl ; done"

