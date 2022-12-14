# Update & Upgrade Ubuntu - OS
sudo apt-get update -y
sudo apt-get upgrade -y

# Key, Repo, Version Initialised with updates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Unfinished Updates / Upgrades - (Precaution)
sudo apt-get update -y
sudo apt-get upgrade -y

# Install mondodb
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

# Mongodb Intialisation
sudo systemctl enable mongod
sudo systemctl restart mongod


# Instructing to replace mongod.conf in app with default vm - Allow permissions.
sudo cp -f /Users/haide/Sparta_Virtualisation/mongod.conf /etc/
sudo systemctl restart mongod