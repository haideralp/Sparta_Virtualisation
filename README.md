# What is Development (Dev) Environment (env) ?
- A development environment is a practically workspace for developers to make changes without breaking anything in a live environment. It is the go to place for developers as they deploy changes. 
## Benefits of Development environment:
- Increased colloboration between teams with share responsibilities
- Improved productivity due to automation of tasks
-  More efficient and streamlines process for developers saving time as they can stay update with latest practices and threats.
-  Provides a creater sense of transpareny on the project so keeping workflow easy to use.
## Diagram Showcasing Development Environment:
![image](https://user-images.githubusercontent.com/97620055/184344694-5369b62a-fe64-4650-b5f1-7a4bf7f9c101.png)
### Key Concepts:
1. Developer specifes set of instructions on Vagrantfile (creatin ubuntu OS, private network)
2. Virtual Box - open source software used to manage virtual environment (create, stop and destroy).  
3. Provisioners - used to set up the IT infrastructure. It can also refer to the steps required to manage access to data and resources, and make them available to users and systems. 
4. Virtual machine/s:  Simulated environment generated - Vm/s created
5. NGINX  - called 'engine-x' - open source web server on virtual machine also used as revered proxy.  (Uses internet settings from local host as an IP range hence a private network)
6. SSH - Developers use SSH connection to establish connection from local host to VM to use internet. 
7. Browser - Where users can see the desired connection has been established, it will display the NGINX server on the web globally. 

# What is Virtual Box & Virtualisation ?
- Virtual box is an open source software owned by oracle it is highly used the process of running virtual machines in your local host. You can run up different OS machines on one local host. 
- Virtualisation means the practice use to generate a simulated environment as opposed to physical one. It often includes computer-generated versions of hardware, operating systems, storage devices and more. You can then parition single computer or server into several virtual machines. Each virtual machine can then interact independently and run different operating systems or applications while sharing the resources of a single host machine.
- By creating multiple resources from a single computer or server, virtualisation improves scalability and workloads while resulting in the use of fewer overall servers, less energy consumption, and less infrastructure costs and maintenance.

# What is Vagrant ?
- A tool owned by HashCorps that is mainly used in building and managing virutal machines in a singe workflow. Vagrant places emphasis on easy to use workflows and automation of tasks. It reduces time to set up dev environment. 

![image](https://user-images.githubusercontent.com/97620055/184310983-635bb3d1-1bb0-41b6-9223-b3c1ec1d9975.png)

# Linux Key Commands
![image](https://user-images.githubusercontent.com/97620055/184311189-0574095a-f8ca-464b-a30f-b947d6d794a0.png)

## Linux Processes:
-	Check for Linux Processes (Task manager)  top or ps aux (aux gives more information)
-	Remove/Delete or Kill A Process (kill -1 to show processes)  SIGKILL/SIGTERM/SIGSTOP 
-	Control + C – To go back to terminal. 
-	Running update on Ubunto OS  sudo apt-get update -y / sudo apt-get upgrade -y 
-	‘|’ pipe allows you to use two or more commands such that output of one command serves as input to the next.    command_1 | command_2 …. | command_N  
- Use mv to rename a file type mv, a space, the name of the file, a space, and the new name you wish the file to have. Then press Enter: mv oldfile.txt newfile.txt

## Linux Permission Rights
-	Root user access  ‘sudo su’ or sudo (not good practice to use root user as deletion from here is not recoverable)
-	Checking file/folder permission enter command ‘ll’
-	Change file/folder permission  chmod +x ‘file/foldername’ (sudo if permission denied’

## Automation Script Creation (DevOps): 
  1.	Ensure you are in virtual environment (vagrant ssh).
  2.	Create shell file (.sh)  nano ‘filename.sh’ or touch ‘filename.sh’
  3.	Enter relevant instruction in .sh file (e.g  apt-get update / upgrade)
  4.	Good practice to ensure permission rights are granted by using ‘sudo’.
  5.	Control X  Yes  Enter to exit .sh file.
  6.	Check contents have been saved  cat ‘filename.sh’
  7.	Run Script  ‘./provision.sh’
  8.	Permission Errors – use sudo chmod +x filename.sh (grants access)
  9.	Check this has been granted (filename.sh turns green)  command ‘ll’
  10.	Run Script as above to execute. Voila the tasks are automated in the script ! 

## NGINX Setup
Setting up NGINX - HTTp/ HTTPs Protocol
Install: sudo apt-get isntall nginx -y
Check for Installation: 'sudo systemctl status nginx)
- Restart / start a process - in the case it's an NGINX - 'sudo systemctl restart nginx'
- Enable the process: 'sudo systemctl enable nginx'
## Private Network Guideline
- On vagrant file configure private network using followed command:
     config.vm.network "private_network", ip: "192.168.10.100"
- Save Vagrant file  (really important)
- Run Vagrant Reload !
- Check for  nginx status  - using sudo systemctl status nginx
- Restart the process with command - sudo systemctl restart nginx (if not actively running)
- Enable the process and check status again 
- Test on browser using http/https://192.168.10.100 (which ever protocol works)
- Common reason for errors: firewall settings (turn off), not saving vagrant file, using vagrant destroy/up if reload not working but ensure re-intall nginx from steps above. 

# Week 4 - Deployment
Case Study - app use nodejs. Developer sent piece of codes that works on local according to them it works on local host that needs to be deployed and displayed on 192.168.10.100:3000. piece of code and deploy. 

## Q&A - Sprint Review 

Time boxing - 1 day for deployment 

- Unzip folder - in virtualisation folder (should show app and environment)

- What is node js - how to launch it ?  

- What are the dependencies - install nodejs -> required version of that version 6.0 or above (sudo app-get install node.js -y (doesn't tells you version))  centOS 'yum install nodejs -y'

- Which environment must this app be deloyed in - Linux, Ubun 16.04 or above

- What the features of this app - 3 pages
1. sparta app page, 
2. fibonacci replacement 
3. is '192.168.10.100:3000 /posts) for mon

- Are they any security issues we should be aware of ? mongo default port is 27017 and mondodb 
allows to access  - mongod.conf you need to allow the required ip (machine)

- 

# Monolith Deployment

- A monolith application is run in a container as a single service and each container has the same features as all other containers. If one application experiences a change in demand the entire architecture must be scaled to meet this. A nodejs app --> is backend too and by default works on port 3000.


![image](https://user-images.githubusercontent.com/97620055/184660975-cb216211-8f92-4204-bb03-a44f50a6b75c.png)
 


## Running Spec Tests & Folder App Sync: 

1. Transfer app and environment folder for app in same folder

2. Navigate to environment --> then to spect tests folder

3. Run --> gem install bundler (only once it is installed)  --> Run Bundler (To see if it has worked)

![image](https://user-images.githubusercontent.com/97620055/184637134-20105b41-2aff-46c0-9bb7-59bb91b62041.png)


4. Enter command for folder sync in vagrant file and save : (config.vm.synced_folder ".", "/home/vagrant/app")

![image](https://user-images.githubusercontent.com/97620055/184637244-d43472dc-f7f1-431f-b991-b769c7453445.png)

5. Vagrant Reload on local host and then vagrant ssh from other working terminal (to enter Vm)

6. ls --> new folder app should be present. cd app into folder and pwd to confirm. 

### Deployment via Automation (provision) Script

1.	Create a provision.sh script in the same directory where vagrant file is present.
2.	Specify all the relevant installation, upgrade and update commands for Ubuntu, NGINX, nodejs and npm to ensure all relevant dependencies are installed prior to app deployment.

![provision](https://user-images.githubusercontent.com/97620055/184679873-9060a98c-9afe-4aa7-acd9-923029268a04.png)

3.	Configure to vagrant file with commands: ‘config.vm.provision "file", source: "~/pathfolder"' , to ensure the Vm is instructed to load this new set of script file as part of the process. 

![image](https://user-images.githubusercontent.com/97620055/184680372-4a4a4722-9065-4cc8-9a43-50100ea0429c.png)

4.	To test you can run the rake spec command here to test all examples and dependencies are passing. 
5.	SSH into Vm machine using command ‘vagrant ssh’. 
6.	Navigate to app folder with relevant commands as shown below.

![navigating to app](https://user-images.githubusercontent.com/97620055/184679828-eccea0a4-f379-49b9-97a5-8fa3247cc6e1.PNG)

7.	If steps following correctly, you can directly proceed with ‘npm start’.

![npm start](https://user-images.githubusercontent.com/97620055/184679940-4f0df897-291c-4a74-b13f-191e3cbf9692.PNG)

8. If all steps are correct the app will be deployed on the address: 192.168.10.100:3000 as shown below. 
 
![app is running](https://user-images.githubusercontent.com/97620055/184679779-8763db0d-6045-47f4-8cbf-e3292ac55c32.PNG)

-	Debug Situation – There are times where rake spec test may show 1 failure to install pm2 package in step 4. Proceed as normal but execute ‘npm install express’ followed by ‘npm start’. 
