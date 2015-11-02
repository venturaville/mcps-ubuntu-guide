Guide
=========

Basic Commands
---------------

* Basics:
    * `ls` - list the current directory
    * `cd` - change directories
        * `cd ..` - (go up one directory)
        * `cd /etc` - (go to the /etc directory)
        * `cd ~` - (go to your home directory)
    * `mv SOURCE DESTINATION` - move files/directories around
    * `cat FILENAME`  - Show files
    * `less` - Pagination of output or of files
    * `grep STRING FILE` - Find strings in files
* Editors:
    * `nano -w FILENAME` - A simple text editor
    * `vim FILENAME` - An advanced text editor
    * gedit - A graphical editor

Useful Utility Commands
------------------------

* Networking and Services
    * `lsof -i` - List active network sockets and connections (and applications using them)
    * `netstat -ltun` - List network sockets that are active
    * `service --status-all` - See services which are enabled for startup (+ means enabled)
    * `service SERVICENAME stop` - Stop a service by name
    * `update-rc.d -f SERVICENAME remove` - Remove startup configuration for service
    * `service xinetd reload` - Tell xinetd to reread its configuration files
* Scheduled applications
    * `crontab -l` - List any crontabs for the current user
    * `crontab -r` - Remove crontab for the current user
    * `atq` - List any applications scheduled to run in the future
* Application Packages
    * `apt-get remove -y apache2-mpm-worker` - Uninstall apache2 application
    * `dpkg-query -S /usr/sbin/apache2` - Find what package installed apache2
    * `dpkg -l PACKAGENAME` - Give short description of a package (or all packages if PACKAGENAME is not given)
    * `dpkg -L PACKAGENAME` - List all files belonging to a package
* Updates 
    * `apt-get update` - Download a current list of applications to the system
    * `apt-get upgrade -y` - Upgrade packages to their latest versions (may prompt you with questions)
* Users and Permissions
    * `deluser --remove-home USERNAME` - Delete a user and their home directory

Common Filesystem Locations
----------------------------
* `/var` - Variable data that the system can write into as needed
    * `/var/spool/cron/crontabs` - Location of regular schedules for applications to be run
    * `/var/spool/cron/atjobs` - Runs an application (once) at a specific time in the future
* `/etc` - Where most system configuration files and directories are located
    * `/etc/crontab` - Runs various cron jobs in cron directories
    * `/etc/cron.d` - System level cron directory
    * `/etc/init.d` and `/etc/init` - Startup scripts for applications
    * `/etc/rc.local` - Script run at startup with custom settings
    * `/etc/passwd` and `/etc/shadow - Login information for users
    * `/etc/group` - Group memberships for users
    * `/etc/xinetd.d` - Directory where some common internet services are run from (everything should be disable = yes)
    * `/etc/sudoers` - Allows users to become `root` and run privileged commands
* `/usr` - Where most applications are kept
* `/home` - Where user's home directories are typically located
* `/root` - The administrator's home directory
    * `/root/.profile` and `/root/.bashrc` - Run for the user to setup their environment
    * `/root/.ssh` - May contain encrypted login keys for remote logins (watch out for any extra files here)

Critical system applications
-----------------------------
* `avahi-daemon` - Used for bringing up DNS on systems
* `xinetd` - Used for bringing up some networking services
* `sshd` - Used for remote access to a system

Commonly seen applications
---------------------------
* `cupsd` - Printer daemon
* `nc` - netcat utility application for opening network ports
* `apache2` - Web serving application

Links
------
* [CyberPatriot Unit Eight - Ubuntu Security](https://s3.amazonaws.com/cpvii/Training+materials/Unit+Eight+-+Ubuntu+Security.pdf)
    * if you are running graphical environment, there are some additional notes in here on additional things you can do

Best Practices for Security:
-----------------------------
* shut of all unneeded services
* remove all unneeded users
* remove all unneeded cronjobs/atjobs
* remove X (graphical environment) unless needed
* in most cases it is safer to install from scratch than attempt to clean up

