### Role - homework_24
##### Short description
a. Upgrading all installed packages on Ubuntu and CentOS
b. Create group and user
c. Create two folder's and give some permission to it
d. Allow to make all command as a root for user from point  "a" passswordless 
e. System will be reboot if any package was upgraded

#### Requirements
- Python 2.8 or higher

#### Role Variables
group vars - list of server instance's with login and path to ssh key
vars/main.yml - list of user_name, group_name, path to folder's and permission's in format xxxx in yml format

#### Dependencies
- None

#### Author Information
- None