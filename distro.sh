#!/bin/bash

apt clean && apt update -y && apt upgrade -y && apt dist-upgrade -y

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

apt update -y

apt install sublime-text \
			gobuster \
			seclists \
			exiftool \
			terminator \
			testssl.sh \
			exiftool \
			python-pip python3-pip \
			mingw-w64 gcc-multilib -y

#	SMTP CLIENT
apt install thunderbird -y

#	FTP CLIENT
apt install filezilla filezilla-common -y

#	PYTHON LIBRARIES...
#	pip install --upgrade pwntools

mkdir /usr/git-tools
cd /usr/git-tools

#	Script to update all git repos
wget https://gist.githubusercontent.com/NoelAlgora/07992cbbd769d276a5b27e7ed5d216d0/raw/dd18cc2fec20eecd443ac872487ddb6111c6349f/update_repos.sh

#	WORDLISTS
git clone https://github.com/fuzzdb-project/fuzzdb.git
ln -s fuzzdb /usr/share/wordlists/fuzzdb

#	PRIVILEGE ESCALATION TOOLS
#	git clone https://github.com/pentestmonkey/unix-privesc-check.git
git clone --single-branch --branch 1_x https://github.com/pentestmonkey/unix-privesc-check.git

git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git
git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/sleventyeleven/linuxprivchecker.git
git clone https://github.com/samratashok/nishang.git

updatedb
apt autoremove -y