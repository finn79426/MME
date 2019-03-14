#!/bin/bash

read -r -p "Do you want to generate a ssh-key (Y/n) ? : " confirm
if [[ "$confirm" =~ ^([nN][oO]|[nN])+$ ]]
then
    :
else
    ssh-keygen -t rsa -b 4096 -C "finn79426@gmail.com"
    eval "$(ssh-agent -s)"
    ssh-add -K ~/.ssh/id_rsa
fi

pbcopy < ~/.ssh/id_rsa.pub
echo "id_rsa.pub => your clipboard"