# What is Development (Dev) Environment (env) ?
- A development environment is a practically workspace for developers to make changes without breaking anything in a live environment. It is the go to place for developers as they deploy changes. 
## Benefits of Development environment:
- 
# What is Vagrant ?
- A tool owned by HashCorps that is mainly used in builing and managing virutal machines in a singe workflow. Vagrant places emphasis on easy to use workflows and automation of tasks. It reduces time to set up dev environment. 
# What is Virtual box ?

Key Commands:
vagrant up - intialises machine
vagrant halt - forcefull stops Vm
vagrant suspend - 
vagrant destroy - destroy (destroy virtual environment)
vagrant reload - vagrant picks new instruction. loads faster the process. 
vagrant status - check status if running 
vagrant ssh - to go into unbuntu Vm machine
exit - to comeout 


- how can we find out the name of the 
OS version :  'uname' or 'uname-a' 
-how to create a file in linux
'touch filname' or 'nano filname' 
-how to check existing file/folder 'ls' or 'ls -a'
- how to create a folder 'mkdir foldername'
- how to navigate inside the folder 'cd foldername/'
- how to come out of the folder 
  or 1 step back 'cd..'
- how can we check our current location 'pwd' or 'whoami'
- how to copy file
  :cp filename destination - copy files when in same directory 
  :cp filename_with_absolute_path destination_with_absolute_path/' (provding os instructions where to find file and copy it and paste it at what destination)
-how to remove file/folder 'rm -rf file/folder_name'

- how to cut paste the file/ move the test file inside linux_commands folder
- mv file/foldername destination (provide absolute path) 

-check all processes in linux - top / ps aux
- ps aux - givens more information but with path 
- get terminal back with control + c
- 
- -find out how to remove/delete/kill process 

- how to us root user 'sudo su' or 'sudo i'(not good practice to use root user)
-
 how to use '|' pipe
- how to check file permission - 'll'
- how to change file permission - 'chmod permission (+x) filename'
- 'r' or 'w' or 'rw' ' all also use number '400' or '600' for all '700'. 
- update our ubuntu OS 'apt-get install update' (like pip) use sudo apt-get update (use superuser for any permission issues)
   install update
   upgrade OS 'apt-get upgrade' use to sudo override permissions

- how to create automate tasks with provisioning scripts (Devops do this more)
- automate update and upgrade  .sh (shell extension) sudo nano filename.sh (create)
- 'cat filename'  
- run provision.sh './provision.sh' - executes file