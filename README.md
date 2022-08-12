# What is Development (Dev) Environment (env) ?
- A development environment is a practically workspace for developers to make changes without breaking anything in a live environment. It is the go to place for developers as they deploy changes. 
## Benefits of Development environment:
- Increased colloboration between teams with share responsibilities
- Improved productivity due to automation of tasks
-  More efficient and streamlines process for developers saving time as they can stay update with latest practices and threats.
-  Provides a creater sense of transpareny on the project so keeping workflow easy to use.
# What is Vagrant ?
- A tool owned by HashCorps that is mainly used in builing and managing virutal machines in a singe workflow. Vagrant places emphasis on easy to use workflows and automation of tasks. It reduces time to set up dev environment. 

![image](https://user-images.githubusercontent.com/97620055/184310983-635bb3d1-1bb0-41b6-9223-b3c1ec1d9975.png)

# Linux Key Commands
![image](https://user-images.githubusercontent.com/97620055/184311189-0574095a-f8ca-464b-a30f-b947d6d794a0.png)

## Linux Processes:
-	Check for Linux Processes (Task manager)  top or ps aux (aux gives more information)
-	Remove/Delete or Kill A Process (kill -1 to show processes)  SIGKILL/SIGTERM/SIGSTOP 
-	Control + C – To go back to terminal. 
-	Running update on Ubunto OS  sudo apt-get update -y / sudo apt-get upgrade -y 
-	Use of ‘|’ pipe:     command_1 | command_2 …. | command_N 
-	

# Linux Permission Rights
-	Root user access  ‘sudo su’ or sudo (not good practice to use root user as deletion from here is not recoverable)
-	Checking file/folder permission enter command ‘ll’
-	Change file/folder permission  chmod +x ‘file/foldername’ (sudo if permission denied’

# Automation Script Creation (DevOps): 
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
