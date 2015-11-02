Guide
=========

Basic Commands
---------------

* `ls` - list the current directory
* `cd` - change directories
    * `cd ..` - (go up one directory)
    * `cd /etc` - (go to the /etc directory)
    * `cd ~` - (go to your home directory)
* `grep STRING FILE` - Find strings in files
* `less` - Pagination of output or of files
* `cat FILENAME`  - Show files

Useful Utility Commands
------------------------

* Networking and Services
    * `lsof -i` - List active network sockets and connections (and applications using them)
    * `netstat -ltun` - List network sockets that are active
    * `service --status-all` - See services which are enabled for startup (+ means enabled)
    * `service SERVICENAME stop` - Stop a service by name
    * `update-rc.d -f SERVICENAME remove` - Remove startup configuration for service
* Scheduled applications
    * `crontab -r` - Remove crontab for the current user
* Application Packages
    * `apt-get remove -y apache2-mpm-worker` - Uninstall apache2 application
    * `dpkg-query -S /usr/sbin/apache2` - Find what package installed apache2
    * `dpkg -l PACKAGENAME` - Give short description of a package (or all packages if PACKAGENAME is not given)
    * `dpkg -L PACKAGENAME` - List all files belonging to a package

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
* `/home` - Where user's home directories are typically located
* `/root` - The administrator's home directory
    * `/root/.profile` and `/root/.bashrc` - Run for the user to setup their environment

Commonly seen applications
----------------------------
* `cupsd` - Printer daemon
* `nc` - netcat utility application for opening network ports
* `apache2` - Web serving application
* `avahi-daemon` - Used for bringing up DNS on systems (used by the system DO NOT DELETE)
* `xinetd` - Used for bringing up some networking services (used by the system DO NOT DELETE)
* `sshd` - Used for remote access to a system (used by the system DO NOT DELETE)



