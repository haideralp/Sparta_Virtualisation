!/bin/bash

# Update & Upgrade Ubuntu - OS
sudo apt-get update -y
sudo apt-get upgrade -y

# Key, Repo, Version Initialised with updates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Unfinished Updates / Upgrades
sudo apt-get update -y
sudo apt-get upgrade -y

# Mongodb Intialisation
sudo systemctl restart mongod
sudo systemctl enable mongod