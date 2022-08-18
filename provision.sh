# Update & Upgrade Ubuntu - OS

sudo apt-get update -y
sudo apt-get upgrade -y

# Install & Enable NGINX

sudo apt-get install nginx -y
sudo systemctl restart nginx
sudo systemctl enable nginx

# Install node.js (version 6.0)
#sudo apt-get purge nodejs npm # purges previous versions 
sudo apt-get install -y nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

# Install npm & pm2
sudo apt-get install npm
sudo npm install pm2 -g  # sudo to override permissions. 

# Upgrade and Update Overall 
sudo apt-get update -y
sudo apt-get upgrade -y

# Automate server Reverse Proxy
sudo rm /etc/nginx/sites-available/default
sudo cp -f /Users/haide/Sparta_Virtualisation/app/reverse_prox etc/nginx/sites-available/default
sudo systemctl restart nginx
sudo systemctl enable nginx

# Setting Environment Variable in the enviroment on vm
echo "DB_HOST=mongodb://192.168.10.150:27017/posts" | sudo tee -a /etc/environment

# Navigate to cd app/app for npm install 
cd app/app
npm install

# Data fetching in seeds folder
cd seeds
sudo node seed.js

# Remaining Updates / Upgrades Performed
sudo apt-get update -y
sudo apt-get upgrade -y