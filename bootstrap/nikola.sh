#!/bin/bash
# bootstrap nikola and required packages

sudo zypper --quiet install -y python3
sudo zypper --quiet install -y python3-pip
sudo zypper --quiet install -y python3-devel
sudo zypper --quiet install -y virtualenv3

sudo zypper --quiet install -y nodejs
#sudo zypper --quiet install -y libxml-devel
sudo zypper --quiet install -y libxml2-devel
sudo zypper --quiet install -y libxslt-devel

if ! [ -L /home/vagrant/blog ]; then
    rm -rf /home/vagrant/blog
    ln -s /hax/blog /home/vagrant/blog
fi

sudo pip3 install --upgrade pip
#sudo pip3 install -r /home/vagrant/blog/notes/requirements.txt
