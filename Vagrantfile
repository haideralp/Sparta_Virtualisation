Vagrant.configure("2") do |config|  

config.vm.box = "ubuntu/xenial64" 
 # creating a virtual machine ubuntu
config.vm.network "private_network", ip: "192.168.10.100"
# once you have added private network, you need reboot VM- vagrant reload
# if reload does not work - try - vagrant destroy then - vagrant up

# let' sync our app folder from localhost to VM
config.vm.synced_folder ".", "/home/vagrant/app"
 # sync data form localhost destination


end
