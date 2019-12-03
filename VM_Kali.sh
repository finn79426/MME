#!/bin/bash

# Tested on Kali Linux 2019.04
# source ./VM_Kali.sh && sleep 5 && reboot

# Install apt-fast
/bin/bash -c "$(curl -sL https://git.io/vokNn)"
echo "alias apt-get='apt-fast'" >> ~/.bashrc
echo "alias apt='apt-fast'" >> ~/.bashrc
source ~/.bashrc

# 解決繁體中文亂碼
LANG=en_US.UTF-8
apt update && apt install --yes ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy

# apt update
apt update
apt dist-upgrade --yes
apt clean
rm -rf /var/lib/apt/list/*

# Disable Grub menu watting
sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub && update-grub

printf "\n"
echo "================================================="
echo "YOU GOT A CLEAN & UPDATED KALI!!!"
echo "PS. Remember to disable ScreenSaver/SleepMode"
echo "================================================="

history -c

