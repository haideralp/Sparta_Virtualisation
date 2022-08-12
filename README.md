# What is Development (Dev) Environment (env) ?
- A development environment is a practically workspace for developers to make changes without breaking anything in a live environment. It is the go to place for developers as they deploy changes. 
## Benefits of Development environment:
- Increased colloboration between teams with share responsibilities
- Improved productivity due to automation of tasks
-  More efficient and streamlines process for developers saving time as they can stay update with latest practices and threats.
-  Provides a creater sense of transpareny on the project so keeping workflow easy to use.
# What is Virutal Box & Virtualisation ?
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
- 1.	Ensure you are in virtual environment (vagrant ssh).
- 2.	Create shell file (.sh)  nano ‘filename.sh’ or touch ‘filename.sh’
- 3.	Enter relevant instruction in .sh file (e.g  apt-get update / upgrade)
- 4.	Good practice to ensure permission rights are granted by using ‘sudo’.
- 5.	Control X  Yes  Enter to exit .sh file.
- 6.	Check contents have been saved  cat ‘filename.sh’
- 7.	Run Script  ‘./provision.sh’
- 8.	Permission Errors – use sudo chmod +x filename.sh (grants access)
- 9.	Check this has been granted (filename.sh turns green)  command ‘ll’
- 10.	Run Script as above to execute. Voila the tasks are automated in the script ! 

## NGINC Setup
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
- Common reason for errors: firewall settings (turn off), not saving vagran file, using vagrant destroy/up if reload not working but ensure re-intall nginx from steps above. 
- 