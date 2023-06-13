#!/bin/bash

if [ $(id -un) != oracle ]; then
	echo "Run this script as oracle"
	echo "aborting with no changes"
	exit 1
fi

if [ -e /finder ]; then
	echo "The /finder directory exists.  Remove it and rerun this script."
	echo "Aborting without changes."
	exit 1
fi

sudo mkdir /finder
sudo mkdir /u01
sudo chown oracle:oracle /finder
sudo chown oracle:oracle /u01
clear
cat README.md
echo -e "\n\n"

echo "Loading the github key..."
eval `ssh-agent`
ssh-add ~/.ssh/id_foiyo

cd /
git clone git@github.com:foiyo/finder

echo "Finder repo cloned to /finder.  Do the following:"
echo "	cd /finder"
echo "	./setup.sh"


