!#/bin/bash

# Update & Upgrade Ubuntu - OS

sudo apt-get update -y
sudo apt-get upgrade -y

# Install & Enable NGINX

sudo apt-get install nginx -y
sudo systemctl status nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Install node.js (version 6.0)
sudo apt-get purge nodejs npm # purges previous versions 
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install pm2
sudo npm install pm2  # sudo to override permissions. 
