# Ruby 

Vagrant.configure("2") do |config|
    config.vm.define "app" do |app|
      app.vm.box = "ubuntu/bionic64"
      app.vm.network "private_network", ip: "192.168.10.100"
      app.vm.synced_folder ".", "/home/vagrant/app" # change it to your home location 
      app.vm.provision "shell", path: "provision.sh", privileged: false
                                     # provide path for your provision.sh 
    end
  
    config.vm.define "db" do |db|
      db.vm.box = "ubuntu/bionic64"
      db.vm.network "private_network", ip: "192.168.10.150"
      
    end
  end


#Vagrant.configure("2") do |config|
    #config.vm.define "app" do |app|
     #app.vm.box = "ubuntu/xenial64" # Linux - ubuntu 16.04
     #app.vm.network "private_network", ip: "192.168.10.100"
     #app.vm.synced_folder ".", "/home/vagrant/app"
     #app.vm.provision "shell", path: "provision.sh"
    #end 
# creating a virtual machine ubuntu 
 # once you have added private network, you need reboot VM - vagrant reload
# if reload does not work - try - vagrant destroy - then - vagrant up 
# let's sync our app folder from localhost to VM
# synch data form localhost   destination 
# specifying to use provision.sh on VM
# Specifying with file name and path.

    #config.vm.define "db" do |db|
     #db.vm.box = "ubuntu/xenial64" # Linux - ubuntu 16.04
     #db.vm.network "private_network", ip: "192.168.10.150"
    
    #end
    
#end